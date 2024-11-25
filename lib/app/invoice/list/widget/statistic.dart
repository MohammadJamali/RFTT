import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/invoice/list/bloc/list_bloc.dart';
import 'package:timetracker/app/invoice/list/widget/statistic_counter.dart';

class InvoiceStatistics extends StatelessWidget {
  const InvoiceStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InvoiceListBloc>();

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
            StatisticCounter(label: 'Paid', count: 12),
            StatisticCounter(label: 'Unpaid', count: 5),
            StatisticCounter(label: 'Over Due', count: 2),
            StatisticCounter(label: 'Draft', count: 3),
          ],
        ),
      ),
    );
  }
}
