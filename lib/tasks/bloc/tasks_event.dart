part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.fetchTasks() = _FetchTasks;
  const factory TasksEvent.addTask(Task task) = _AddTask;
  const factory TasksEvent.updateTask(Task task) = _UpdateTask;
  const factory TasksEvent.deleteTask(int id) = _DeleteTask;
}