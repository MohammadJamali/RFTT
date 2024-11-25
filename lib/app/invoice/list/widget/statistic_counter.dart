import 'package:flutter/material.dart';

class StatisticCounter extends StatelessWidget {
  const StatisticCounter({
    required this.label,
    required this.count,
    super.key,
  });

  final int count;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Text(
            count.toString().padLeft(2, '0'),
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
