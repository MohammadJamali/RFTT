part of 'list_bloc.dart';

@freezed
class InvoiceListEvent with _$InvoiceListEvent {
  const factory InvoiceListEvent.fetchInvoiceList() = _FetchInvoices;
  const factory InvoiceListEvent.search(String query) = _InvoiceSearch;
}
