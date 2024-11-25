import 'package:timetracker_api/timetracker_api.dart';

/// {@template invoice_api}
/// The interface for an API that provides access to a list of invoices.
/// {@endtemplate}
abstract class InvoiceApi {
  /// {@macro invoice_api}
  const InvoiceApi();

  /// Featch a list of [Invoice]
  Future<List<Invoice>> fetchInvoiceList();

  /// Provides a [Stream] of all invoices.
  Stream<List<Invoice>> getInvoiceList();

  /// Create a new [invoice].
  Future<void> addInvoice(Invoice invoice);

  /// Update a [invoice].
  ///
  /// If a [invoice] with the same id already exists, it will be replaced.
  Future<void> updateInvoice(Invoice invoice);

  /// Deletes the `invoice` with the given id.
  ///
  /// If no `invoice` with the given id exists, a [InvoiceNotFoundException] error is
  /// thrown.
  Future<void> deleteInvoice(String id);

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Invoice] with a given id is not found.
class InvoiceNotFoundException implements Exception {}
