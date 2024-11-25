import 'package:timetracker_api/timetracker_api.dart';

/// {@template projects_repository}
/// A repository that handles `project` related requests.
/// {@endtemplate}
class ProjectRepository {
  /// {@macro projects_repository}
  const ProjectRepository({
    required ProjectsApi projectsApi,
  }) : _projectsApi = projectsApi;

  final ProjectsApi _projectsApi;

  /// Provides a [Stream] of all tasks.
  Future<List<Project>> fetchProjects() => _projectsApi.fetchProjects();

  /// Provides a [Stream] of all projects.
  Stream<List<Project>> getProjects() => _projectsApi.getProjects();

  /// Saves a new [project].
  Future<void> addProject(Project project) => _projectsApi.addProject(project);

  /// Update a [project].
  ///
  /// If a [project] with the same id already exists, it will be replaced.
  Future<void> updateProject(Project project) =>
      _projectsApi.updateProject(project);

  /// Deletes the `project` with the given id.
  ///
  /// If no `project` with the given id exists, a [ProjectNotFoundException] error is
  /// thrown.
  Future<void> deleteProject(String id) => _projectsApi.deleteProject(id);
}
