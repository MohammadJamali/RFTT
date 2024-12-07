part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  HomeState._();

  factory HomeState.initial() = _Initial;
  factory HomeState.loaded(List<Project> projects) = _Loaded;

  List<Project> get projects => maybeWhen(
        loaded: (projects) => projects,
        orElse: () => [],
      );
}
