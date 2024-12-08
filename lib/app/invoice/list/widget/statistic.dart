import 'package:flutter/material.dart';
import 'package:timetracker/app/invoice/list/widget/statistic_counter.dart';
import 'package:timetracker_api/src/models/invoice/invoice.dart';

class InvoiceStatistics extends StatelessWidget {
  const InvoiceStatistics({super.key, required this.invoices});

  final List<Invoice> invoices;

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<InvoiceListBloc>();

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFf35026),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const StatisticCounter(label: 'Paid', count: 0),
            StatisticCounter(label: 'Unpaid', count: invoices.length),
            const StatisticCounter(label: 'Over Due', count: 0),
            const StatisticCounter(label: 'Draft', count: 0),
          ],
        ),
      ),
    );
  }
}
