part of 'list_bloc.dart';

@freezed
class InvoiceListState with _$InvoiceListState {
  const factory InvoiceListState.initial() = _InvoiceListInitial;
  const factory InvoiceListState.loaded(List<Invoice> invoices) = _InvoiceListLoaded;
  const factory InvoiceListState.error(String message) = _InvoiceListError;
}
