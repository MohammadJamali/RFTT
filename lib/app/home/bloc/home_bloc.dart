import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      event.map(
        started: (_) => emit(HomeState.loaded([])),
        addProject: (e) {
          final updatedProjects = List.of(state.projects)..add(e.project);
          emit(HomeState.loaded(updatedProjects));
        },
        editProject: (e) {
          final updatedProjects = state.projects.map((project) {
            return project.id == e.project.id ? e.project : project;
          }).toList();
          emit(HomeState.loaded(updatedProjects));
        },
        deleteProject: (e) {
          final updatedProjects =
              state.projects.where((project) => project.id != e.id).toList();
          emit(HomeState.loaded(updatedProjects));
        },
      );
    });
  }
}
