import 'dart:convert' show jsonDecode, jsonEncode, utf8;

import 'package:convert/convert.dart' show hex;
import 'package:http/http.dart' as http;
import 'package:json_sorter/json_sorter.dart';
import 'package:pointycastle/export.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timetracker_api/timetracker_api.dart';

class NetworkInvoiceApi extends INetworkInvoiceApi {
  final _invoiceStream = BehaviorSubject<Invoice>();

  String _keccak256Hash(String data) {
    final digest = KeccakDigest(256);
    final hash = hex.encode(digest.process(utf8.encode(data)));
    return '0x$hash';
  }

  String _normalizeMap(Map<dynamic, dynamic> data) =>
      jsonSortedEncode(data).toLowerCase();

  String _multiFormatSerialize(Map<dynamic, dynamic> data) {
    // replace '0x' by the prefix
    // requestNetwork/packages/multi-format/src/hexadecimal-serializable-multi-format.ts

    const prefix = '01';
    final keccak256 = _keccak256Hash(_normalizeMap(data));
    return '$prefix${keccak256.substring(2).toLowerCase()}';
  }

  @override
  Future<Invoice?> create(
    Invoice request,
    SignWithWalletCallBack signCallback,
  ) async {
    final invoice = request.copyWith(
      requestInfo: request.requestInfo!.copyWith(
        timestamp: getCurrentTimestampInSeconds(),
      ),
    );

    final unsignedAction = {
      'name': 'create',
      'parameters': invoice.toApiJson(),
      'version': '2.0.3',
    };

    final normalizeUnsignedAction = _normalizeMap(unsignedAction);
    final signedUnsignedAction = await signCallback(normalizeUnsignedAction);

    final action = {
      'data': unsignedAction,
      'signature': {
        'method': 'ecdsa-ethereum',
        'value': signedUnsignedAction,
      },
    };
    final requestHash = _multiFormatSerialize(action);

    final serializedPayee = invoice.requestInfo!.payee.toJson();
    final payeeHash = _multiFormatSerialize(serializedPayee);

    final body = {
      'channelId': requestHash,
      'topics': [payeeHash, requestHash],
      'transactionData': {'data': action},
    };

    try {
      // final rawResponse = await http.post(
      //   Uri.parse('https://sepolia.gateway.request.network/persistTransaction'),
      //   headers: {
      //     'Content-Type': 'application/json',
      //     'X-Request-Network-Client-Version': '0.50.0',
      //   },
      //   body: jsonEncode(body),
      // );

      // if (rawResponse.statusCode != 200) {
      //   print('Failed to persist transaction: ${rawResponse.statusCode}');
      //   return null;
      // }

      // final response = jsonDecode(rawResponse.body) as Map<String, dynamic>;
      
      // final transactions = InvoiceTransactions.fromJson(response);
      

      return invoice.copyWith(
        channelId: requestHash,
        signature: signedUnsignedAction,
        storageLocation: 'QmcEJTyhxYiF4z27LPCZyiCnM14NJQDNe6kvySivWSQWsc',
            // response['meta']!['transactionStorageLocation'] as String,
        state: InvoiceState.pending,
      );
    } catch (error) {
      print('Error persisting transaction: $error');
    }

    return null;
  }

  @override
  Future<void> delete(String invoiceId) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  Stream<Invoice> invoiceStream() {
    // TODO: implement invoiceStream
    throw UnimplementedError();
  }

  @override
  Future<List<Invoice>> list({String? id, String? projectId}) {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<void> update(Invoice invoice) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<InvoiceTransactions?> getTransactionsByChannelId({
    required String channelId,
  }) async {
    try {
      final rawResponse = await http.get(
        Uri.parse('getTransactionsByChannelId?channelId=$channelId'),
        headers: {
          'X-Request-Network-Client-Version': '0.50.0',
        },
      );

      if (rawResponse.statusCode != 200) {
        print('Failed to persist transaction: ${rawResponse.statusCode}');
        return null;
      }

      final response = jsonDecode(rawResponse.body) as Map<String, dynamic>;
      final transactions = InvoiceTransactions.fromJson(response);

      return transactions;
    } catch (error) {
      print('Error persisting transaction: $error');
    }

    return null;
  }
}
