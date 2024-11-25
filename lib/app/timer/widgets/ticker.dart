import 'dart:async';

enum TickerMode { up, down }

class Ticker {
  const Ticker._({
    required this.start,
    required this.mode,
    this.ticks,
  });

  factory Ticker.countDown({required int ticks}) {
    return Ticker._(start: ticks, mode: TickerMode.down, ticks: ticks);
  }

  factory Ticker.countUp({int start = 0}) {
    return Ticker._(start: start, mode: TickerMode.up);
  }

  final TickerMode mode;
  final int start;
  final int? ticks;

  Stream<int> tick() {
    if (mode == TickerMode.up) return _tickUp();
    return _tickDown();
  }

  Stream<int> _tickDown() {
    if (ticks == null) {
      throw ArgumentError('Ticks must be provided for countDown.');
    }
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks! - x - 1,
    ).take(ticks!);
  }

  Stream<int> _tickUp() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => start + x,
    );
  }
}
