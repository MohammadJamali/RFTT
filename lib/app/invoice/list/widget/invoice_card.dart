import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timetracker/app/invoice/list/widget/label.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({required this.invoice, super.key});

  final Invoice invoice;

  Widget _status(ThemeData theme, InvoiceStatus status) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green.shade100,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Text(
          status.name,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: status == InvoiceStatus.Paid
                ? Colors.green
                : Colors.amber.shade200,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        invoice.payer.displayName,
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        invoice.payer.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  _status(theme, invoice.status),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    theme: theme,
                    label: 'Amount',
                    value: '\$${invoice.contentData}',
                  ),
                  Label(
                    theme: theme,
                    label: 'No',
                    value: '#${invoice.id}',
                  ),
                  Label(
                    theme: theme,
                    label: 'Date',
                    value: DateFormat.yMMMd().format(
                      DateTime.parse(
                        invoice.contentData.dueDate.replaceAll('.', '-'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
