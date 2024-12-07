import 'package:flutter/material.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceStatus extends StatelessWidget {
  const InvoiceStatus({
    required this.state,
    super.key,
  });

  final InvoiceState state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: state == InvoiceState.accepted
            ? Colors.green.shade100
            : Colors.amber.shade100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Text(
        state.name,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: [InvoiceState.pending, InvoiceState.created].contains(state)
              ? Colors.green
              : Colors.amber.shade700,
        ),
      ),
    );
  }
}
