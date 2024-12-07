import 'package:timetracker_api/timetracker_api.dart';

/// {@template invoices_repository}
/// A repository that handles `invoice` related requests.
/// {@endtemplate}
class InvoiceRepository {
  /// {@macro invoice_repository}
  const InvoiceRepository({
    required INetworkInvoiceApi networkApi,
    required ILocalStorageInvoiceApi localApi,
  })  : _onlineApi = networkApi,
        _localApi = localApi;

  final INetworkInvoiceApi _onlineApi;
  final ILocalStorageInvoiceApi _localApi;

  Future<void> add(Invoice request, SignWithWalletCallBack signCallback) async {
    final invoice = await _onlineApi.create(request, signCallback);
    if (invoice == null) {
      throw Exception();
    }

    await _localApi.add(invoice);
  }

  Future<List<Invoice>> searchInvoicesByAccountName(String partialName) =>
      _localApi.searchInvoicesByAccountName(partialName);

  Future<void> refreshState(String id) async {
    final invoices = await _localApi.list(id: id);
    if (invoices.isEmpty) return;

    final transaction = await _onlineApi.getTransactionsByChannelId(
      channelId: invoices.first.channelId!,
    );

    final state = transaction?.result?.transactions?.firstOrNull?.state;
    if (state == null) return;

    await _localApi.update(
      invoices.first.copyWith(
        state: state,
        signer: null,
        requestInfo: null,
        contentData: null,
        paymentNetwork: null,
      ),
    );
  }

  Future<void> update(Invoice invoice) => _localApi.update(invoice);
  Future<void> delete(String id) => _localApi.delete(id);

  Future<List<Invoice>> list({
    String? id,
    String? projectId,
  }) =>
      _localApi.list(
        id: id,
        projectId: projectId,
      );

  Stream<Invoice> invoiceStream() => _localApi.invoiceStream();
}
