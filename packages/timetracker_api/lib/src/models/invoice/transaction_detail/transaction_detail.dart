import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/models.dart';

part 'transaction_detail.freezed.dart';
part 'transaction_detail.g.dart';

@freezed
class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail({
    Invoice? data,
    Signature? signature,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
}
