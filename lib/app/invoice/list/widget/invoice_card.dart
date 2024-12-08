import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timetracker/app/invoice/widgets/invoice_status.dart';
import 'package:timetracker/widgets/label.dart';
import 'package:timetracker/widgets/profile_list_item.dart';
import 'package:timetracker_api/timetracker_api.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({required this.invoice, required this.account, super.key});

  final Account account;
  final Invoice invoice;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final amount = double.parse(invoice.requestInfo!.expectedAmount.substring(
            0,
            invoice.requestInfo!.expectedAmount.length -
                invoice.requestInfo!.currency.decimals! +
                2)) /
        100;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
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
              Label.row({
                'Amount':
                    '$amount (${invoice.requestInfo?.currency.symbol!.value})',
                'No': invoice.id!.substring(0, 4) ?? 'Draft',
                'Date': DateFormat.yMMMd().format(
                  parseDateTimeFromTimestamp(
                    invoice.requestInfo?.timestamp ??
                        getCurrentTimestampInSeconds(),
                  ),
                ),
              }),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        'Storage Location',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      invoice.storageLocation ?? '-',
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Channel Id',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      invoice.channelId ?? '-',
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: ButtonStyle(
                      minimumSize:
                          WidgetStateProperty.all<Size>(const Size(200, 35)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    onPressed: () async {},
                    child: const Text(
                      'Share',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  InvoiceStatus(state: invoice.state),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
