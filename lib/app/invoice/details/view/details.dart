import 'package:flutter/material.dart';
import 'package:timetracker/app/invoice/widgets/invoice_status.dart';
import 'package:timetracker/widgets/label.dart';
import 'package:timetracker/widgets/profile_list_item.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceDetailsPage extends StatelessWidget {
  const InvoiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionHeader(label: 'Invoice #0013'),
            const SizedBox(height: 16),
            _BillingSection(),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _ItemTable(),
                  const SizedBox(height: 24),
                  _TotalSection(),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Issue Invoice'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String label;

  const _SectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      label,
      style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _BillingSection extends StatelessWidget {
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
          Row(
            children: [
              const Text('Billing'),
              const Spacer(),
              InvoiceStatus(
                status: InvoiceStatusList.Unpaid,
              ),
            ],
          ),
          const SizedBox(height: 16),
          ProfileListItem(),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xfff3f7f8),
            ),
            padding: const EdgeInsets.all(16),
            child: Label.row({
              'Issued': '24 Nov 2021',
              'Due': '04 Dec 2021',
            }),
          ),
        ],
      ),
    );
  }
}

class _ItemTable extends StatelessWidget {
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
            const SizedBox(width: 16),
            Text('Price'),
          ],
        ),
        const SizedBox(height: 16),
        _ItemRow(label: 'UIX Re-Design', quantity: '1', price: '€ 5.200'),
        const SizedBox(height: 8),
        _ItemRow(label: 'Custom Illustration', quantity: '5', price: '€ 1.150'),
      ],
    );
  }
}

class _ItemRow extends StatelessWidget {
  final String label;
  final String quantity;
  final String price;

  const _ItemRow({
    required this.label,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '$quantity',
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
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xfff3f7f8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _LabelValue(label: 'Total', value: '€ 6.350'),
          _LabelValue(label: 'Tax 10%', value: '€ 6.3'),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff0a3b40),
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
                  '€ 6.356',
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
  final String label;
  final String value;

  const _LabelValue({required this.label, required this.value});

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
