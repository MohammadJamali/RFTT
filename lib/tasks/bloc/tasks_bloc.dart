import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TaskRepository repository;

  TasksBloc(this.repository) : super(const TasksState.initial()) {
    on<_FetchTasks>((event, emit) async {
      final tasks = await repository.fetchTasks();
      emit(TasksState.loaded(tasks));
    });

    on<_AddTask>((event, emit) async {
      await repository.addTask(event.task);
      add(const TasksEvent.fetchTasks());
    });

    on<_UpdateTask>((event, emit) async {
      await repository.updateTask(event.task);
      add(const TasksEvent.fetchTasks());
    });

    on<_DeleteTask>((event, emit) async {
      await repository.deleteTask(event.id);
      add(const TasksEvent.fetchTasks());
    });
  }
}
