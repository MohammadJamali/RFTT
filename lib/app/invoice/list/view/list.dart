import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/invoice/list/bloc/list_bloc.dart';
import 'package:timetracker/app/invoice/list/widget/invoice_card.dart';
import 'package:timetracker/app/invoice/list/widget/search.dart';
import 'package:timetracker/app/invoice/list/widget/statistic.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class InvoiceListPage extends StatelessWidget {
  const InvoiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InvoiceListBloc(context.read<InvoiceRepository>())
        ..add(
          const InvoiceListEvent.fetchInvoiceList(),
        ),
      child: const InvoiceListView(),
    );
  }
}

class InvoiceListView extends StatelessWidget {
  const InvoiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InvoiceStatistics(),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: SearchWidget(),
            ),
            BlocBuilder<InvoiceListBloc, InvoiceListState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (invoices) => Expanded(
                    child: ListView.builder(
                      itemCount: invoices.length,
                      itemBuilder: (context, index) {
                        final invoice = invoices[index];
                        return InvoiceCard(invoice: invoice);
                      },
                    ),
                  ),
                  error: (message) => Center(child: Text(message)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
