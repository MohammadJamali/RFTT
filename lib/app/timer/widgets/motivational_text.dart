
import 'package:flutter/material.dart';

class MotivationalText extends StatelessWidget {
  const MotivationalText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          'Focus on your task',
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Mohammad!',
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          color: Colors.red.shade500,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '☕',
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineLarge?.copyWith(
            fontFamily: 'NotoColorEmoji',
          ),
        ),
      ],
    );
  }
}