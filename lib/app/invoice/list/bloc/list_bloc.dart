import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

part 'list_event.dart';
part 'list_state.dart';
part 'list_bloc.freezed.dart';

class InvoiceListBloc extends Bloc<InvoiceListEvent, InvoiceListState> {
  InvoiceListBloc(
    this.invoiceRepository,
  ) : super(const InvoiceListState.initial()) {
    on<_InvoiceSearch>(_onSearch);
    on<_FetchInvoices>(_onfetchInvoiceList);
  }
  final InvoiceRepository invoiceRepository;

  FutureOr<void> _onSearch(
    _InvoiceSearch event,
    Emitter<InvoiceListState> emit,
  ) async {
    final invoices = await invoiceRepository.searchInvoicesByAccountName(
      event.query.toLowerCase(),
    );

    emit(InvoiceListState.loaded(invoices));
  }

  FutureOr<void> _onfetchInvoiceList(
    _FetchInvoices event,
    Emitter<InvoiceListState> emit,
  ) async {
    final invoices = await invoiceRepository.list();
    emit(InvoiceListState.loaded(invoices));
  }
}
