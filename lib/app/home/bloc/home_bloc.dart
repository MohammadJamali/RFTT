import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.projectRepository) : super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_AddProject>(_onAddProject);
    on<_EditProject>(_onEditProject);
    on<_DeleteProject>(_onDeleteProject);
  }

  final ProjectRepository projectRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    final projects = await projectRepository.list();
    emit(HomeState.loaded(projects));
  }

  Future<void> _onAddProject(
    _AddProject event,
    Emitter<HomeState> emit,
  ) async {
    await projectRepository.add(event.project);
    emit(HomeState.loaded(await projectRepository.list()));
  }

  Future<void> _onEditProject(
    _EditProject event,
    Emitter<HomeState> emit,
  ) async {
    await projectRepository.update(event.project);
    emit(HomeState.loaded(await projectRepository.list()));
  }

  Future<void> _onDeleteProject(
    _DeleteProject event,
    Emitter<HomeState> emit,
  ) async {
    await projectRepository.delete(event.id);
    emit(HomeState.loaded(await projectRepository.list()));
  }
}
