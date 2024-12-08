import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this.repository) : super(const TasksState.initial()) {
    on<_FetchTasks>(_onFetchTasks);
    on<_TasksUpdated>(_onTasksUpdated);
    on<_AddTask>(_onAddTask);
    on<_UpdateTask>(_onUpdateTask);
    on<_DeleteTask>(_onDeleteTask);

    subscription = repository.getTasks().listen(
          (event) => add(TasksEvent.tasksUpdated(event)),
        );
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }

  late StreamSubscription<Task> subscription;
  final TaskRepository repository;

  Future<void> _onTasksUpdated(
    _TasksUpdated event,
    Emitter<TasksState> emit,
  ) async {
    emit(TasksState.loaded([event.task]));
  }

  Future<void> _onFetchTasks(
    _FetchTasks event,
    Emitter<TasksState> emit,
  ) async {
    final tasks = await repository.list();
    emit(TasksState.loaded(tasks));
  }

  Future<void> _onAddTask(
    _AddTask event,
    Emitter<TasksState> emit,
  ) async {
    await repository.add(event.task);
    add(const TasksEvent.fetchTasks());
  }

  Future<void> _onUpdateTask(
    _UpdateTask event,
    Emitter<TasksState> emit,
  ) async {
    await repository.update(event.task);
    add(const TasksEvent.fetchTasks());
  }

  Future<void> _onDeleteTask(
    _DeleteTask event,
    Emitter<TasksState> emit,
  ) async {
    await repository.delete(event.id);
    add(const TasksEvent.fetchTasks());
  }
}
