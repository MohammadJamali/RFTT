import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String projectId,
    required String title,
    required DateTime created,
    @Default(0) int duration,
    String? description,
    DateTime? deadline,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) =>
      _$TaskFromJson(json);
}
