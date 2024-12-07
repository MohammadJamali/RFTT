import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timetracker/app/invoice/widgets/invoice_status.dart';
import 'package:timetracker/widgets/label.dart';
import 'package:timetracker/widgets/profile_list_item.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({required this.invoice, super.key});

  final Invoice invoice;

  @override
  Widget build(BuildContext context) {
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
                  ProfileListItem(
                    title: 'Payer',
                    description: 'Unknown',
                  ),
                  const Spacer(),
                  InvoiceStatus(state: invoice.state),
                ],
              ),
              const SizedBox(height: 16),
              Label.row({
                'Amount': '${invoice.requestInfo.expectedAmount} '
                    '(${invoice.requestInfo.currency.name})',
                'No': invoice.storageLocation ?? 'Draft',
                'Date': DateFormat.yMMMd().format(
                  parseDateTimeFromTimestamp(
                    invoice.requestInfo.timestamp ??
                        getCurrentTimestampInSeconds(),
                  ),
                ),
              }),
            ],
          ),
        ),
      ),
    );
  }
}
