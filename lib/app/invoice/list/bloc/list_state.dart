part of 'list_bloc.dart';

@freezed
class InvoiceListState with _$InvoiceListState {
  const factory InvoiceListState.initial() = InvoiceListInitial;
  const factory InvoiceListState.loaded(List<Invoice> invoices) = InvoiceListLoaded;
  const factory InvoiceListState.error(String message) = InvoiceListError;
}
