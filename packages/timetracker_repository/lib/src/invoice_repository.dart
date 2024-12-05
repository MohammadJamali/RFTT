import 'dart:math';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/src/models/invoice_request.dart';
import 'package:timetracker_repository/src/utils/crypto.dart';
import 'package:timetracker_repository/src/utils/map.dart';
import 'package:timetracker_repository/src/utils/units.dart';
import 'package:uuid/uuid.dart';

typedef SignStringCallBack = Future<String> Function(
    String walletAddress, String data);

/// {@template invoices_repository}
/// A repository that handles `invoice` related requests.
/// {@endtemplate}
class InvoiceRepository {
  /// {@macro invoice_repository}
  const InvoiceRepository({
    required InvoiceApi invoiceApi,
  }) : _invoiceApi = invoiceApi;

  final InvoiceApi _invoiceApi;

  String _generateSalt({int length = 16}) {
    final random = Random.secure();
    final bytes = List<int>.generate(length ~/ 2, (_) => random.nextInt(256));
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  }

  Future<InvoiceRequest> createInvoiceRequest({
    required String projectId,
    required double expectedAmount,
    required String walletAddress,
    required String createdWith,
    required SignStringCallBack signCallBack,
  }) async {
    final salt = _generateSalt();
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    final currency = currencies[CurrencySymbol.FAU]!;

    final invoice = Invoice(
      id: const Uuid().v4(),
      projectId: projectId,
      timestamp: timestamp,
      currency: currency,
      expectedAmount: parseUnits(
        '$expectedAmount',
        currency.decimals,
      ).toString(),
      payee: TransactionActor(
        type: 'ethereumAddress',
        value: walletAddress,
      ),
      extensionsData: [
        ExtensionsData(
          action: 'create',
          id: 'pn-erc20-fee-proxy-contract',
          parameters: ExtensionDataParameter(
            feeAddress: '0x0000000000000000000000000000000000000000',
            feeAmount: '0',
            paymentAddress: walletAddress,
            paymentNetworkName: 'sepolia',
            salt: salt,
          ),
          version: '0.2.0',
        ),
        ExtensionsData(
          action: 'create',
          id: 'content-data',
          parameters: ExtensionDataParameter(
            content: ContentData(
              builderId: 'request-network',
              createdWith: createdWith,
              dueDate: '',
              reason: '',
            ),
          ),
          version: '0.1.0',
        ),
      ],
    );

    final serializedInvoice = invoice.toJson();

    final data = {
      'name': 'create',
      'parameters': serializedInvoice,
      'version': '2.0.3',
    };
    final json = normalizeMap(data);
    final signiture = await signCallBack(walletAddress, json);

    final action = {
      'data': data,
      'signature': {
        'method': 'ecdsa-ethereum',
        'value': signiture,
      },
    };

    final requestId = _multiFormatSerialize(data);

    final hashedTopics = [
      {
        'type': 'ethereumAddress',
        'value': walletAddress,
      }
    ].map(_multiFormatSerialize);

    return InvoiceRequest(
      invoice: invoice,
      action: action,
      requestId: requestId,
      hashedTopics: hashedTopics,
      request: {
        ...serializedInvoice,
        'extensions': {
          'content-data': {
            'events': [],
            'id': 'content-data',
            'type': 'content-data',
            'values': {
              'content': {
                'reason': '',
                'dueDate': '',
                'builderId': 'request-network',
                'createdWith': createdWith,
              },
              'builderId': 'request-network',
              'createdWith': createdWith,
              'dueDate': '',
              'reason': '',
            },
            'version': '0.1.0',
          },
          'pn-erc20-fee-proxy-contract': {
            'id': 'pn-erc20-fee-proxy-contract',
            'type': 'payment-network',
            'events': [
              {
                'name': 'create',
                'parameters': {
                  'feeAddress': '0x0000000000000000000000000000000000000000',
                  'feeAmount': '0',
                  'paymentAddress': walletAddress,
                  'salt': salt,
                },
              },
            ],
            'values': {
              'feeAddress': '0x0000000000000000000000000000000000000000',
              'feeAmount': '0',
              'paymentAddress': walletAddress,
              'receivedPaymentAmount': '0',
              'receivedRefundAmount': '0',
              'salt': salt,
              'sentPaymentAmount': '0',
              'sentRefundAmount': '0',
            },
          },
        },
        'requestId': requestId,
        'timestamp': timestamp,
        'version': '2.0.3',
        'events': {
          'actionSigner': {
            'type': 'ethereumAddress',
            'value': walletAddress,
          },
          'type': 'ethereumAddress',
          'value': walletAddress,
          'name': 'create',
          'parameters': {
            'expectedAmount': '2000000000000000000',
            'extensionsDataLength': 2,
            'isSignedRequest': false,
          },
          'expectedAmount': '2000000000000000000',
        },
        'state': 'created',
        'creator': {
          'type': 'ethereumAddress',
          'value': '0x33AbA93A575d8FCCc4129989880E3EcFCA9EBd1F',
        },
      },
    );
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
