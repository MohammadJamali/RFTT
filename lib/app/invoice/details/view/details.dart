import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:reown_appkit/reown_appkit.dart';
import 'package:timetracker/app/settings/bloc/settings_bloc.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker/utils/time.dart';
import 'package:timetracker/widgets/label.dart';
import 'package:timetracker/widgets/profile_list_item.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';
import 'package:uuid/uuid.dart';

class InvoiceDetailsPage extends StatefulWidget {
  InvoiceDetailsPage({super.key});

  static String route = '/invoice/details';

  @override
  State<InvoiceDetailsPage> createState() => _InvoiceDetailsPageState();
}

class _InvoiceDetailsPageState extends State<InvoiceDetailsPage> {
  Future<void> createInvoice(
    BuildContext context,
    Invoice invoice,
    String walletAddress,
  ) async {
    final repo = context.read<InvoiceRepository>();

    await repo.add(
      invoice,
      selectedProject!.id,
      (String data) async {
        if (!context.mounted) throw Exception();
        final setting = context.read<SettingsBloc>();
        final modelFuture = (await setting.model(context))!;
        try {
          final sessionData = modelFuture.session!.toJson();

          final bytes = utf8.encode(data);
          final encoded = hex.encode(bytes);

          final signuture = await modelFuture.appKit!.request(
            topic: sessionData['topic'] as String,
            chainId: 'eip155:11155111',
            request: SessionRequestParams(
              method: 'personal_sign',
              params: [
                '0x$encoded',
                walletAddress.toLowerCase(),
              ],
            ),
          );

          return signuture as String;
        } catch (_) {
          rethrow;
        } finally {}
      },
    );

    Navigator.pop(context);
  }

  Future<List<Task>> computeTasks(
      TaskRepository taskRepository, String projectId) async {
    var tasks = await taskRepository.list(projectId: projectId);
    tasks = tasks
        .where(
          (e) => e.invoiceId == null && e.duration > 0,
        )
        .toList();

    return tasks;
  }

  Future<List<Project>>? fetchProjectList;
  Project? selectedProject;

  Future<List<Task>>? computeTasksFuture;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final args = ModalRoute.of(
          context,
        )?.settings.arguments as Map<String, Map<String, Object?>>? ??
        <String, Map<String, Object?>>{};

    final account = Account.fromJson(args['account']!);

    fetchProjectList ??= context.read<ProjectRepository>().list();

    final invoiceRepository = context.read<InvoiceRepository>();
    final taskRepository = context.read<TaskRepository>();
    final setting = context.read<SettingsBloc>();
    final walletAddress = setting.walletAddress()!;

    Invoice? invoice;
    if (args.containsKey('invoice')) {
      invoice = Invoice.fromJson(args['invoice']!);
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        'Invoice',
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
                ]),
                const SizedBox(height: 24),
                _BillingSection(account: account),
                const SizedBox(height: 24),
                FutureBuilder(
                  future: fetchProjectList,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CupertinoActivityIndicator());
                    }

                    return DropdownButtonFormField<Project>(
                      value: selectedProject,
                      onChanged: (value) {
                        if (value != null) {
                          selectedProject = value;

                          computeTasksFuture = computeTasks(
                            taskRepository,
                            value.id,
                          );
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Select A Project',
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      items: snapshot.data?.map((project) {
                        return DropdownMenuItem(
                          value: project,
                          child: Text(project.title),
                        );
                      }).toList(),
                    );
                  },
                ),
                if (selectedProject != null)
                  FutureBuilder(
                    future: computeTasksFuture,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CupertinoActivityIndicator(),
                        );
                      }

                      final amount = snapshot.data!
                              .map(
                                (e) => e.duration,
                              )
                              .reduce(
                                (a, b) => a + b,
                              ) *
                          1.1;

                      return Column(
                        children: [
                          const SizedBox(height: 24),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                _ItemTable(tasks: snapshot.data!),
                                const SizedBox(height: 24),
                                _TotalSection(amount: amount),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () async {
                              final currency = currencies[CurrencySymbol.FAU]!;
                              final payee = TransactionActor(
                                type: 'ethereumAddress',
                                value: walletAddress,
                              );
                              const contentData = ContentData(
                                reason: '',
                                createdWith: 'Saturn Time Tracker',
                                builderId: 'request-network',
                                dueDate: '',
                              );

                              await createInvoice(
                                context,
                                Invoice(
                                  id: const Uuid().v4(),
                                  requestInfo: RequestInfo(
                                    currency: currency,
                                    expectedAmount: parseUnits(
                                      amount.toStringAsFixed(2),
                                      currency.decimals!,
                                    ).toString(),
                                    payee: payee,
                                  ),
                                  paymentNetwork: PaymentNetwork(
                                    id: 'pn-erc20-fee-proxy-contract',
                                    paymentNetworkName: currency.name!,
                                    paymentAddress: walletAddress,
                                    feeAddress: zeroAddress,
                                    feeAmount: '0',
                                  ),
                                  contentData: contentData,
                                  signer: payee,
                                ),
                                walletAddress,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(48),
                            ),
                            child: const Text('Create Invoice'),
                          ),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BillingSection extends StatelessWidget {
  const _BillingSection({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text('Billing'),
              Spacer(),
              // InvoiceStatus(
              //   state: InvoiceState.pending,
              // ),
            ],
          ),
          const SizedBox(height: 16),
          ProfileListItem(
            title: account.name ?? 'Organization',
            description: account.transactionActors?.firstOrNull?.value ??
                account.email ??
                '-',
            imageProvider: account.profilePicture != null
                ? MemoryImage(base64Decode(account.profilePicture!))
                : null,
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xfff3f7f8),
            ),
            padding: const EdgeInsets.all(16),
            child: Label.row({
              'Issued': DateFormat.yMMMd().format(DateTime.now()),
              'Due': 'Dec 25, 2024',
            }),
          ),
        ],
      ),
    );
  }
}

class _ItemTable extends StatelessWidget {
  const _ItemTable({required this.tasks, super.key});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text('Item', style: theme.textTheme.bodyMedium),
            ),
            Text('Qty', style: theme.textTheme.bodyMedium),
            const SizedBox(width: 32),
            const Text('Price'),
          ],
        ),
        const SizedBox(height: 16),
        ...tasks
            .map(
              (e) => _ItemRow(
                label: e.title,
                quantity: secondToMinutes(e.duration),
                price: 'FAU ${(e.duration * 1.1).toStringAsFixed(2)}',
              ),
            )
            .toList(),
      ],
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({
    required this.label,
    required this.quantity,
    required this.price,
  });
  final String label;
  final String quantity;
  final String price;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Text(
          quantity,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          price,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _TotalSection extends StatelessWidget {
  const _TotalSection({required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: const Color(0xfff3f7f8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // const _LabelValue(label: 'Total', value: '€ 6.350'),
          // const _LabelValue(label: 'Tax 10%', value: '€ 6.3'),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFf35026),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FAU ${amount.toStringAsFixed(2)}',
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LabelValue extends StatelessWidget {
  const _LabelValue({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: theme.textTheme.bodyMedium),
        Text(
          value,
          style:
              theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
