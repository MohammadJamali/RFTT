import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_event.dart';
part 'form_state.dart';
part 'form_bloc.freezed.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc() : super(_Initial()) {
    on<InvoiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
