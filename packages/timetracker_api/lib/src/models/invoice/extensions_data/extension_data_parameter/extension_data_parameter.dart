import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'extension_data_parameter.freezed.dart';
part 'extension_data_parameter.g.dart';

@freezed
class ExtensionDataParameter with _$ExtensionDataParameter {
  @JsonSerializable(includeIfNull: false)
  const factory ExtensionDataParameter({
    String? feeAddress,
    String? feeAmount,
    String? paymentAddress,
    String? paymentNetworkName,
    ContentData? content,
    String? salt,
  }) = _ExtensionDataParameter;

  factory ExtensionDataParameter.fromJson(Map<String, Object?> json) =>
      _$ExtensionDataParameterFromJson(json);
}
