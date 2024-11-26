import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    required this.label,
    required this.value,
    super.key,
  });

  static Row row(Map<String, String> items) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items
            .map(
              (key, value) => MapEntry(
                key,
                Label(
                  label: key,
                  value: value,
                ),
              ),
            )
            .values
            .toList(),
      );

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.black54,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
