import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'projects_event.dart';
part 'projects_state.dart';
part 'projects_bloc.freezed.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(ProjectsState.initial()) {
    on<ProjectsEvent>((event, emit) {
      event.map(
        started: (_) => emit(ProjectsState.loaded([])),
        addProject: (e) {
          final updatedProjects = List.of(state.projects)..add(e.project);
          emit(ProjectsState.loaded(updatedProjects));
        },
        editProject: (e) {
          final updatedProjects = state.projects.map((project) {
            return project.id == e.project.id ? e.project : project;
          }).toList();
          emit(ProjectsState.loaded(updatedProjects));
        },
        deleteProject: (e) {
          final updatedProjects =
              state.projects.where((project) => project.id != e.id).toList();
          emit(ProjectsState.loaded(updatedProjects));
        },
      );
    });
  }
}
