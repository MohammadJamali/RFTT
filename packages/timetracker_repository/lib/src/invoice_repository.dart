import 'package:timetracker_api/timetracker_api.dart';

/// {@template invoices_repository}
/// A repository that handles `invoice` related requests.
/// {@endtemplate}
class InvoiceRepository {
  /// {@macro invoice_repository}
  const InvoiceRepository({
    required InvoiceApi invoiceApi,
  }) : _invoiceApi = invoiceApi;

  final InvoiceApi _invoiceApi;

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
