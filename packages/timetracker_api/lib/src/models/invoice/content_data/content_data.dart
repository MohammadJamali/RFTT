import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_data.freezed.dart';
part 'content_data.g.dart';

@freezed
class ContentData with _$ContentData {
  const factory ContentData({
    // '🍕'
    String? reason,
    // '2023.06.16'
    String? dueDate,
    String? createdWith,
    String? builderId,
  }) = _ContentData;

  factory ContentData.fromJson(Map<String, Object?> json) =>
      _$ContentDataFromJson(json);
}
