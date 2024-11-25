part of 'timer_bloc.dart';

@freezed
sealed class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started() = OnTimerStarted;
  const factory TimerEvent.ticked(int duration) = OnTimerTicked;
  const factory TimerEvent.stopped() = OnTimerStopped;
}
