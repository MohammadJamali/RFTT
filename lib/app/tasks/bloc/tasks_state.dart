part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = _Initial;
  const factory TasksState.loaded(List<Task> tasks) = TasksLoaded;
}
