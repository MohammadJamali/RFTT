import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_actor.freezed.dart';
part 'transaction_actor.g.dart';

@freezed
class TransactionActor with _$TransactionActor {
  @JsonSerializable(includeIfNull: false)
  const factory TransactionActor({
    required String type, required String value, @JsonKey(includeToJson: false) String? id,
  }) = _TransactionActor;

  factory TransactionActor.fromJson(Map<String, Object?> json) =>
      _$TransactionActorFromJson(json);
}
