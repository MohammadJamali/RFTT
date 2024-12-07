import 'package:timetracker_api/src/models/invoice/invoice_transactions/invoice_transactions.dart';
import 'package:timetracker_api/timetracker_api.dart';

typedef SignWithWalletCallBack = Future<String> Function(String data);

/// {@template invoice_api}
/// The interface for an API that provides access to a list of invoices.
/// {@endtemplate}
abstract class _IInvoiceApi {
  /// {@macro invoice_api}
  const _IInvoiceApi();

  Future<void> delete(String invoiceId);
  Future<void> update(Invoice invoice);

  Future<List<Invoice>> list({String? id, String? projectId});
  Stream<Invoice> invoiceStream();

  Future<void> dispose();
}

abstract class INetworkInvoiceApi implements _IInvoiceApi {
  const INetworkInvoiceApi();

  Future<Invoice?> create(Invoice invoice, SignWithWalletCallBack signCallback);

  Future<InvoiceTransactions?> getTransactionsByChannelId({
    required String channelId,
  });
}

abstract class ILocalStorageInvoiceApi implements _IInvoiceApi {
  const ILocalStorageInvoiceApi();

  Future<void> add(Invoice invoice);
}

/// Error thrown when a [Invoice] with a given id is not found.
class InvoiceNotFoundException implements Exception {}
