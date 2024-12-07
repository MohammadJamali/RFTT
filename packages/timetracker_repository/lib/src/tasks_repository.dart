import 'package:timetracker_api/timetracker_api.dart';

/// {@template task_repository}
/// A repository that handles `task` related requests.
/// {@endtemplate}
class TaskRepository {
  /// {@macro task_repository}
  const TaskRepository({
    required ITaskApi tasksApi,
  }) : _api = tasksApi;

  final ITaskApi _api;

  Future<List<Task>> list({
    String? id,
    String? projectId,
  }) =>
      _api.list(
        id: id,
        projectId: projectId,
      );
  Stream<Task> getTasks() => _api.taskStream();
  Future<void> add(Task task) => _api.add(task);
  Future<void> update(Task task) => _api.update(task);
  Future<void> delete(String id) => _api.delete(id);
}
