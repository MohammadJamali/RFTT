part of 'projects_bloc.dart';

@freezed
class ProjectsState with _$ProjectsState {
  ProjectsState._();

  factory ProjectsState.initial() = _Initial;
  factory ProjectsState.loaded(List<Project> projects) = _Loaded;

  List<Project> get projects => maybeWhen(
        loaded: (projects) => projects,
        orElse: () => [],
      );
}
