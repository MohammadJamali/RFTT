import 'package:timetracker_api/timetracker_api.dart';

/// {@template task_repository}
/// A repository that handles `task` related requests.
/// {@endtemplate}
class TaskRepository {
  /// {@macro task_repository}
  const TaskRepository({
    required TaskApi tasksApi,
  }) : _tasksApi = tasksApi;

  final TaskApi _tasksApi;

  /// Provides a [Stream] of all tasks.
  Future<List<Task>> fetchTasks() => _tasksApi.fetchTasks();

  /// Provides a [Stream] of all tasks.
  Stream<List<Task>> getTasks() => _tasksApi.getTasks();

  /// Saves a new [task].
  Future<void> addTask(Task task) => _tasksApi.addTask(task);

  /// Update a [task].
  ///
  /// If a [task] with the same id already exists, it will be replaced.
  Future<void> updateTask(Task task) => _tasksApi.updateTask(task);

  /// Deletes the `task` with the given id.
  ///
  /// If no `task` with the given id exists, a [TaskNotFoundException] error is
  /// thrown.
  Future<void> deleteTask(String id) => _tasksApi.deleteTask(id);
}
