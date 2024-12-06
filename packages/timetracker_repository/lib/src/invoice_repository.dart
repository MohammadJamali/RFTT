import 'dart:convert';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/src/utils/crypto.dart';
import 'package:timetracker_repository/src/utils/map.dart';
import 'package:timetracker_api/src/utils/units.dart';
import 'package:http/http.dart' as http;

typedef SignWithWalletCallBack = Future<String> Function(String data);

/// {@template invoices_repository}
/// A repository that handles `invoice` related requests.
/// {@endtemplate}
class InvoiceRepository {
  /// {@macro invoice_repository}
  const InvoiceRepository({
    required InvoiceApi invoiceApi,
  }) : _invoiceApi = invoiceApi;

  final InvoiceApi _invoiceApi;

  Future<InvoiceCreatedResponse?> createInvoiceRequest({
    required CreateInvoiceRequest request,
    required SignWithWalletCallBack signer,
  }) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    if (request.requestInfo.timestamp == null) {
      request = request.copyWith(
        requestInfo: request.requestInfo.copyWith(
          timestamp: timestamp,
        ),
      );
    }

    final unsignedAction = {
      'name': 'create',
      'parameters': request.toApiJson(),
      'version': '2.0.3',
    };

    final normalizeUnsignedAction = normalizeMap(unsignedAction);
    final signedUnsignedAction = await signer(normalizeUnsignedAction);

    final action = {
      'data': unsignedAction,
      'signature': {
        'method': 'ecdsa-ethereum',
        'value': signedUnsignedAction,
      },
    };
    final requestHash = _multiFormatSerialize(action);

    final serializedPayee = request.requestInfo.payee.toJson();
    final payeeHash = _multiFormatSerialize(serializedPayee);

    final body = {
      'channelId': requestHash,
      'topics': [payeeHash, requestHash],
      'transactionData': {'data': action},
    };

    try {
      final rawResponse = await http.post(
        Uri.parse('https://sepolia.gateway.request.network/persistTransaction'),
        headers: {
          'Content-Type': 'application/json',
          'X-Request-Network-Client-Version': '0.50.0',
        },
        body: jsonEncode(body),
      );

      if (rawResponse.statusCode != 200) {
        print('Failed to persist transaction: ${rawResponse.statusCode}');
        return null;
      }

      final response = InvoiceCreatedResponse.fromJson(
        jsonDecode(rawResponse.body) as Map<String, dynamic>,
      );

      return response;
    } catch (error) {
      print('Error persisting transaction: $error');
    }

    return null;
  }

  String _multiFormatSerialize(Map<dynamic, dynamic> data) {
    // replace '0x' by the prefix
    // requestNetwork/packages/multi-format/src/hexadecimal-serializable-multi-format.ts

    const prefix = '01';
    final keccak256 = keccak256Hash(normalizeMap(data));
    return '$prefix${keccak256.substring(2).toLowerCase()}';
  }

  /// Provides a [Stream] of all invoice.
  Future<List<Invoice>> fetchInvoiceList() => _invoiceApi.fetchInvoiceList();

  /// Provides a [Stream] of all invoice.
  Stream<List<Invoice>> getInvoiceList() => _invoiceApi.getInvoiceList();

  /// Saves a new [invoice].
  Future<void> addInvoice(Invoice invoice) => _invoiceApi.addInvoice(invoice);

  /// Update a [invoice].
  ///
  /// If a [invoice] with the same id already exists, it will be replaced.
  Future<void> updateInvoice(Invoice invoice) =>
      _invoiceApi.updateInvoice(invoice);

  /// Deletes the `invoice` with the given id.
  ///
  /// If no `invoice` with the given id exists, a [InvoiceNotFoundException] error is
  /// thrown.
  Future<void> deleteInvoice(String id) => _invoiceApi.deleteInvoice(id);
}
