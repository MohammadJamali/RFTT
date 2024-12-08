import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
@immutable
class Task with _$Task {

  @JsonSerializable(includeIfNull: false)
  const factory Task({
    required String id,
    required String projectId,
    required String title,
    required DateTime created,
    String? invoiceId,
    @Default(0) int duration,
    String? description,
    DateTime? deadline,
    @Default(<String>[]) List<String> tags,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) =>
      _$TaskFromJson(json);
}
