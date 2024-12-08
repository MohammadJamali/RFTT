import 'dart:ui';

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/timer/timer.dart';
import 'package:timetracker/app/timer/widgets/motivational_text.dart';
import 'package:timetracker/app/timer/widgets/ticker.dart';
import 'package:timetracker/utils/time.dart';
import 'package:timetracker_api/timetracker_api.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({
    super.key,
  });

  static String route = '/timer';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: Ticker.countUp())
        ..add(
          const TimerEvent.started(),
        ),
      child: const _TimerView(),
    );
  }
}

class _TimerView extends StatelessWidget {
  const _TimerView();

  @override
  Widget build(BuildContext context) {
    final task = Task.fromJson(
      (ModalRoute.of(
        context,
      )!
          .settings
          .arguments! as Map<String, dynamic>)['task']! as Map<String, dynamic>,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(title: task.title),
            const TimerDisplay(),
            const MotivationalText(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(244, 245, 254, 1),
        borderRadius: BorderRadius.circular(32),
      ),
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () => _showExitDialog(context),
            elevation: 0,
            fillColor: Colors.white,
            shape: const CircleBorder(),
            constraints: BoxConstraints.tight(const Size(42, 42)),
            child: const Icon(Icons.close, size: 18),
          ),
        ],
      ),
    );
  }

  void _showExitDialog(BuildContext context) => showDialog<bool>(
        context: context,
        builder: (_) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AlertDialog(
              title: const Text('Exit Timer?'),
              content: const Text('Are you sure you want to stop the timer?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    final timerBloc = BlocProvider.of<TimerBloc>(context);
                    final elapsedSeconds = timerBloc.state is TimerRunning
                        ? (timerBloc.state as TimerRunning).secondsElapsed
                        : 0;
                    Navigator.of(context).pop();
                    Navigator.of(context).pop(elapsedSeconds);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
          );
        },
      );
}

class TimerDisplay extends StatelessWidget {
  const TimerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Blob.animatedRandom(
        size: 400,
        loop: true,
        minGrowth: 8,
        duration: const Duration(seconds: 1),
        edgesCount: 5,
        styles: BlobStyles(
          color: Colors.red.shade500,
          fillType: BlobFillType.fill,
        ),
        child: BlocBuilder<TimerBloc, TimerState>(
          builder: (context, state) {
            final time = state is TimerRunning ? state.secondsElapsed : 0;
            return Center(
              child: Text(
                secondToMinutes(time),
                style: theme.textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
