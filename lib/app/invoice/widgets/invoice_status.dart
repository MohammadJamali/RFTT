import 'package:flutter/material.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceStatus extends StatelessWidget {
  const InvoiceStatus({
    required this.status,
    super.key,
  });

  final InvoiceStatusList status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: status == InvoiceStatusList.Paid
            ? Colors.green.shade100
            : Colors.amber.shade100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Text(
        status.name,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: status == InvoiceStatusList.Paid
              ? Colors.green
              : Colors.amber.shade700,
        ),
      ),
    );
  }
}
