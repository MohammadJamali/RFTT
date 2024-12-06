import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/currency/currency.dart';
import 'package:timetracker_api/src/models/transaction_actor/transaction_actor.dart';

part 'request_info.freezed.dart';
part 'request_info.g.dart';

@freezed
class RequestInfo with _$RequestInfo {
  @JsonSerializable(includeIfNull: false)
  const factory RequestInfo({
    required Currency currency,
    required String expectedAmount,
    required TransactionActor payee,
    int? timestamp,
  }) = _RequestInfo;

  factory RequestInfo.fromJson(Map<String, Object?> json) =>
      _$RequestInfoFromJson(json);
}
