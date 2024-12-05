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
                    title: invoice.payer?.firstName ?? 'Payer',
                    description: invoice.payer?.value ?? 'Unknown',
                  ),
                  const Spacer(),
                  InvoiceStatus(status: invoice.status),
                ],
              ),
              const SizedBox(height: 16),
              Label.row({
                'Amount': 'Amount',
                'No': '#${invoice.id}',
                'Date': 'DateFormat'
                // 'Date': DateFormat.yMMMd().format(
                //   DateTime.parse(
                //     invoice.contentData.dueDate.replaceAll('.', '-'),
                //   ),
                // ),
              }),
            ],
          ),
        ),
      ),
    );
  }
}
