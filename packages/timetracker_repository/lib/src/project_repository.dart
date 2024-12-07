import 'package:timetracker_api/timetracker_api.dart';

/// {@template projects_repository}
/// A repository that handles `project` related requests.
/// {@endtemplate}
class ProjectRepository {
  /// {@macro projects_repository}
  const ProjectRepository({
    required IProjectApi projectsApi,
  }) : _api = projectsApi;

  final IProjectApi _api;

  Future<List<Project>> list({String? id}) => _api.list(id: id);
  Stream<Project> projectStream() => _api.projectStream();
  Future<void> add(Project project) => _api.add(project);
  Future<void> update(Project project) => _api.update(project);
  Future<void> delete(String id) => _api.delete(id);
}
