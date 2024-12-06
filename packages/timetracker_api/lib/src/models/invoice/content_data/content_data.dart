import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_data.freezed.dart';
part 'content_data.g.dart';

@freezed
class ContentData with _$ContentData {
  @JsonSerializable(includeIfNull: false)
  const factory ContentData({
    String? builderId,
    String? createdWith,
    // '2023.06.16'
    String? dueDate,
    // '🍕'
    String? reason,
  }) = _ContentData;

  factory ContentData.fromJson(Map<String, Object?> json) =>
      _$ContentDataFromJson(json);
}
