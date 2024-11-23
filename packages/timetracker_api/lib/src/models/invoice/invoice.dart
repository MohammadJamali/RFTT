import 'package:freezed_annotation/freezed_annotation.dart';
import 'content_data/content_data.dart';
import 'currency/currency.dart';
import 'payment_network/payment_network.dart';
import 'transaction_actor/transaction_actor.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    required String projectId,
    required String timestamp,
    required Currency currency,
    required TransactionActor payee,
    required TransactionActor payer,
    required String paymentRecipient,
    required ContentData contentData,
    required PaymentNetwork paymentNetwork,
    @Default('0x0000000000000000000000000000000000000000') String feeRecipient,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
