import 'package:timetracker_api/timetracker_api.dart';

/// {@template task_api}
/// The interface for an API that provides access to a list of tasks.
/// {@endtemplate}
abstract class ITaskApi {
  /// {@macro task_api}
  const ITaskApi();

  Future<void> add(Task task);
  Future<void> update(Task task);
  Future<Task?> delete(String id);

  Stream<Task> taskStream();
  Future<List<Task>> list({String? id, String? projectId});

  Future<int> count({String? projectId, bool? completed});
  Future<int> sumOfTaskDurations({String? projectId});

  Future<void> close();
}

/// Error thrown when a [Task] with a given id is not found.
class TaskNotFoundException implements Exception {}
