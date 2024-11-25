part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.started() = _Started;
  const factory ProjectsEvent.addProject(Project project) = _AddProject;
  const factory ProjectsEvent.editProject(Project project) = _EditProject;
  const factory ProjectsEvent.deleteProject(String id) = _DeleteProject;
}
