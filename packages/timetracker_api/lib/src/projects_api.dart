import 'package:timetracker_api/timetracker_api.dart';

/// {@template project_api}
/// The interface for an API that provides access to a list of projects.
/// {@endtemplate}
abstract class 
ProjectsApi {
  /// {@macro project_api}
  const ProjectsApi();

  /// Featch a list of [Project]
  Future<List<Project>> fetchProjects();

  /// Provides a [Stream] of all projects.
  Stream<List<Project>> getProjects();

  /// Create a new [project].
  Future<void> addProject(Project project);

  /// Update a [project].
  ///
  /// If a [project] with the same id already exists, it will be replaced.
  Future<void> updateProject(Project project);

  /// Deletes the `project` with the given id.
  ///
  /// If no `project` with the given id exists, a [ProjectNotFoundException]
  /// error is thrown.
  Future<void> deleteProject(String id);

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Project] with a given id is not found.
class ProjectNotFoundException implements Exception {}
