import 'package:timetracker_api/timetracker_api.dart';

/// {@template project_api}
/// The interface for an API that provides access to a list of projects.
/// {@endtemplate}
abstract class IProjectApi {
  /// {@macro project_api}
  const IProjectApi();

  Future<List<Project>> list({String? id});
  Future<void> add(Project project);
  Future<void> update(Project project);
  Future<Project?> delete(String id);
  Stream<Project> projectStream();

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Project] with a given id is not found.
class ProjectNotFoundException implements Exception {}
