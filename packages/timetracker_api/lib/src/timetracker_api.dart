import 'package:timetracker_api/timetracker_api.dart';

/// {@template task_api}
/// The interface for an API that provides access to a list of tasks.
/// {@endtemplate}
abstract class TasksApi {
  /// {@macro task_api}
  const TasksApi();

  /// Provides a [Stream] of all tasks.
  Stream<List<Task>> getTasks();

  /// Saves a [task].
  ///
  /// If a [task] with the same id already exists, it will be replaced.
  Future<void> saveTask(Task task);

  /// Deletes the `task` with the given id.
  ///
  /// If no `task` with the given id exists, a [TaskNotFoundException] error is
  /// thrown.
  Future<void> deleteTask(String id);

  /// Deletes all completed tasks.
  ///
  /// Returns the number of deleted tasks.
  Future<int> clearCompleted();

  /// Sets the `isCompleted` state of all tasks to the given value.
  ///
  /// Returns the number of updated tasks.
  Future<int> completeAll({required bool isCompleted});

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Task] with a given id is not found.
class TaskNotFoundException implements Exception {}
