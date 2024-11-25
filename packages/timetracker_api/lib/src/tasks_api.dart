import 'package:timetracker_api/timetracker_api.dart';

/// {@template task_api}
/// The interface for an API that provides access to a list of tasks.
/// {@endtemplate}
abstract class TasksApi {
  /// {@macro task_api}
  const TasksApi();

  /// Featch a list of [Task]
  Future<List<Task>> fetchTasks();

  /// Provides a [Stream] of all tasks.
  Stream<List<Task>> getTasks();

  /// Create a new [task].
  Future<void> addTask(Task task);

  /// Update a [task].
  ///
  /// If a [task] with the same id already exists, it will be replaced.
  Future<void> updateTask(Task task);

  /// Deletes the `task` with the given id.
  ///
  /// If no `task` with the given id exists, a [TaskNotFoundException] error is
  /// thrown.
  Future<void> deleteTask(String id);

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Task] with a given id is not found.
class TaskNotFoundException implements Exception {}
