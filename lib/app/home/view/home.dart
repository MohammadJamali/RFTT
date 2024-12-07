import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reown_appkit/reown_appkit.dart';
import 'package:timetracker/app/landing/landing.dart';
import 'package:timetracker/app/settings/bloc/settings_bloc.dart';

import 'package:flutter/material.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'dart:math';

import 'package:timetracker_repository/timetracker_repository.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String route = '/home';

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String generateSalt({int length = 16}) {
    final random = Random.secure();
    final bytes = List<int>.generate(length ~/ 2, (_) => random.nextInt(256));
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  }

  @override
  Widget build(BuildContext context) {
    const zeroAddress = '0x0000000000000000000000000000000000000000';

    const walletAddress = '0x33aba93a575d8fccc4129989880e3ecfca9ebd1f';
    const reason = 'reason';
    final salt = generateSalt();

    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(walletAddress),
                TextButton(
                  onPressed: () async {
                    final repo = context.read<InvoiceRepository>();
                    final currency = currencies[CurrencySymbol.FAU]!;
                    final payee = TransactionActor(
                      type: 'ethereumAddress',
                      value: walletAddress,
                    );
                    final contentData = ContentData(
                      reason: reason,
                      createdWith: 'Saturn Time Tracker',
                      builderId: 'request-network',
                      dueDate: '',
                    );

                    final response = await repo.createInvoiceRequest(
                      invoice: Invoice(
                        requestInfo: RequestInfo(
                          currency: currency,
                          expectedAmount: parseUnits(
                            '3',
                            currency.decimals,
                          ).toString(),
                          payee: payee,
                        ),
                        paymentNetwork: PaymentNetwork(
                          id: 'pn-erc20-fee-proxy-contract',
                          paymentNetworkName: currency.name,
                          paymentAddress: walletAddress,
                          feeAddress: zeroAddress,
                          feeAmount: '0',
                        ),
                        contentData: contentData,
                        signer: payee,
                      ),
                      signer: (String data) async {
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
                        } finally {
                          // await modelFuture.dispose();
                        }
                      },
                    );

                    print('a');
                  },
                  child: const Text('PressMe'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
