import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker/timer/widgets/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial()) {
    on<OnTimerStarted>(_onTimerStarted);
    on<OnTimerTicked>(_onTimerTicked);
    on<OnTimerStopped>(_onTimerStopped);
  }

  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onTimerStarted(OnTimerStarted event, Emitter<TimerState> emit) {
    emit(TimerState.running(_ticker.start));
    _tickerSubscription?.cancel();
    _tickerSubscription =
        _ticker.tick().listen((duration) => add(OnTimerTicked(duration)));
  }

  void _onTimerTicked(OnTimerTicked event, Emitter<TimerState> emit) {
    emit(TimerState.running(event.duration));
  }

  void _onTimerStopped(OnTimerStopped event, Emitter<TimerState> emit) {
    emit(const TimerState.stopped());
  }
}
