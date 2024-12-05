import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/enums/identity_types.dart';

part 'identity.freezed.dart';
part 'identity.g.dart';

@freezed
class Identity with _$Identity {
  const factory Identity({
    required IdentityType type,
    required String value,
  }) = _Identity;

  factory Identity.fromJson(Map<String, Object?> json) =>
      _$IdentityFromJson(json);
}
