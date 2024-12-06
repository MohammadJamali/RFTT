import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/currency/currency.dart';
import 'package:timetracker_api/src/models/invoice/extensions_data/extensions_data.dart';
import 'package:timetracker_api/src/models/invoice/invoice_status.dart';
import 'package:timetracker_api/src/models/invoice/payment_network/payment_network.dart';
import 'package:timetracker_api/src/models/transaction_actor/transaction_actor.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    required String projectId,
    required int timestamp,
    required Currency currency,
    required TransactionActor payee,
    required String expectedAmount,
    required List<ExtensionData> extensionsData,
    TransactionActor? payer,
    String? paymentRecipient,
    PaymentNetwork? paymentNetwork,
    @Default(InvoiceStatusList.Unpaid) InvoiceStatusList status,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
