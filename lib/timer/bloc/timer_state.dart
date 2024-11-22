part of 'timer_bloc.dart';

@Freezed(equal: true)
sealed class TimerState with _$TimerState {
  const factory TimerState.initial() = TimerInitial;
  const factory TimerState.running(int secondsElapsed) = TimerRunning;
  const factory TimerState.stopped() = TimerStopped;
}
