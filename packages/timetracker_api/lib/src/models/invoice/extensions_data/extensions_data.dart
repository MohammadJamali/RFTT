import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/extensions_data/extension_data_parameter/extension_data_parameter.dart';

part 'extensions_data.freezed.dart';
part 'extensions_data.g.dart';

@freezed
class ExtensionData with _$ExtensionData {
  @JsonSerializable(includeIfNull: false)
  const factory ExtensionData({
    String? id,
    String? action,
    String? type,
    ExtensionDataParameter? parameters,
    String? version,
  }) = _ExtensionData;

  factory ExtensionData.fromJson(Map<String, Object?> json) =>
      _$ExtensionDataFromJson(json);
}
