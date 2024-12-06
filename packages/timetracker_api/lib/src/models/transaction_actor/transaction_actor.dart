import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_actor.freezed.dart';
part 'transaction_actor.g.dart';

@freezed
class TransactionActor with _$TransactionActor {
  @JsonSerializable(includeIfNull: false)
  const factory TransactionActor({
    // Types.Identity.TYPE.ETHEREUM_ADDRESS,
    // Types.Identity.TYPE.ETHEREUM_SMART_CONTRACT,
    required String type,
    required String value,

    String? email,
    String? firstName,
    String? lastName,
    String? businessName,
    String? phone,
    String? address,
    String? taxRegistration,
    String? companyRegistration,
    String? miscellaneous,

    String? profilePic,
  }) = _TransactionActor;

  factory TransactionActor.fromJson(Map<String, Object?> json) =>
      _$TransactionActorFromJson(json);
}
