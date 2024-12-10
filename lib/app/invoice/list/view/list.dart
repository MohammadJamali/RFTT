import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/invoice/details/view/details.dart';
import 'package:timetracker/app/invoice/list/bloc/list_bloc.dart';
import 'package:timetracker/app/invoice/list/widget/invoice_card.dart';
import 'package:timetracker/app/invoice/list/widget/search.dart';
import 'package:timetracker/app/invoice/list/widget/statistic.dart';
import 'package:timetracker/app/settings/settings.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class InvoiceListPage extends StatelessWidget {
  const InvoiceListPage({super.key});

  static String route = '/invoices';

  @override
  Widget build(BuildContext context) {
    final account = Account.fromJson(
      ModalRoute.of(
            context,
          )?.settings.arguments as Map<String, dynamic>? ??
          <String, dynamic>{},
    );

    return BlocProvider(
      create: (context) => InvoiceListBloc(context.read<InvoiceRepository>())
        ..add(InvoiceListEvent.fetchInvoiceList(accountId: account.id)),
      child: InvoiceListView(account: account),
    );
  }
}

class InvoiceListView extends StatelessWidget {
  const InvoiceListView({required this.account, super.key});

  final Account account;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => createnvoice(context),
        tooltip: 'Create Invoice',
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFFf35026),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 24, left: 24, right: 24),
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "${account.name}'s Invoices",
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () => Navigator.pop(context),
                    elevation: 0,
                    fillColor: Colors.grey.shade100,
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(const Size(42, 42)),
                    child: const Icon(Icons.close, size: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<InvoiceListBloc, InvoiceListState>(
                  builder: (context, state) {
                    if (state is InvoiceListInitial) {
                      return const Center(child: CupertinoActivityIndicator());
                    } else if (state is InvoiceListError) {
                      return Text(state.message);
                    } else if (state is! InvoiceListLoaded) {
                      return Text('');
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        InvoiceStatistics(invoices: state.invoices),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: SearchWidget(),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Invoices',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (state.invoices.isEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Text(
                              'There is nothing to display ...',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ...state.invoices.map(
                          (e) => InvoiceCard(
                            invoice: e,
                            account: account,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  createnvoice(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return BlocProvider.value(
            value: context.read<SettingsBloc>(),
            child: RepositoryProvider.value(
              value: context.read<InvoiceRepository>(),
              child: RepositoryProvider.value(
                value: context.read<ProjectRepository>(),
                child: RepositoryProvider.value(
                  value: context.read<TaskRepository>(),
                  child: InvoiceDetailsPage(),
                ),
              ),
            ),
          );
        },
        settings: RouteSettings(
          arguments: {
            'account': account.toJson(),
          },
        ),
      ),
    );

    final invoiceListBloc = context.read<InvoiceListBloc>();
    invoiceListBloc.add(InvoiceListEvent.fetchInvoiceList(accountId: account.id));
  }
}
