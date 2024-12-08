import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {

  @JsonSerializable(includeIfNull: false)
  const factory Project({
    required String id,
    required String title,
    required DateTime created,
    String? description,
    @Default(0) int duration,
    @Default(0) int finishedTasks,
    @Default(0) int totalTasks,
    DateTime? deadline,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}
