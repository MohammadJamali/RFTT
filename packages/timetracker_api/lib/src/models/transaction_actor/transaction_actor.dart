import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_actor.freezed.dart';
part 'transaction_actor.g.dart';

@freezed
class TransactionActor with _$TransactionActor {
  const factory TransactionActor({
    // Types.Identity.TYPE.ETHEREUM_ADDRESS,
    required String type,
    required String value,

    String? name,
    String? taxId,
    String? profilePic,
    String? email,
  }) = _TransactionActor;

  factory TransactionActor.fromJson(Map<String, Object?> json) =>
      _$TransactionActorFromJson(json);
}
