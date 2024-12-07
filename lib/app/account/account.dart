import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timetracker/app/account/bloc/account_bloc.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';
import 'package:uuid/uuid.dart';

class AccountFormPage extends StatelessWidget {
  const AccountFormPage({super.key});

  static String route = '/account';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountFormBloc(),
      child: const AccountFormView(),
    );
  }
}

enum TransactionType {
  Ethereum,
}

extension TransactionTypeExtension on TransactionType {
  String get value {
    switch (this) {
      case TransactionType.Ethereum:
        return 'ethereumAddress';
    }
  }
}

class AccountFormView extends StatefulWidget {
  const AccountFormView({super.key});

  @override
  State<AccountFormView> createState() => _AccountFormViewState();
}

class _AccountFormViewState extends State<AccountFormView> {
  Future<void> onSubmit(BuildContext context) async {
    final accountRepository = context.read<AccountRepository>();
    var newAccount = context.read<AccountFormBloc>().state;

    var transactionActors = <TransactionActor>[];

    if (newAccount.id != '') {
      await accountRepository.update(
        newAccount.copyWith(transactionActors: null),
      );

      final account = (await accountRepository.list(
        id: newAccount.id,
        includeTransactionActors: true,
      ))
          .first;

      for (final actor
          in newAccount.transactionActors ?? <TransactionActor>[]) {
        if (account.transactionActors
                ?.any((a) => a.type == actor.type && a.value == actor.value) ==
            false) {
          transactionActors.add(actor);
        }
      }

      for (final actor in account.transactionActors ?? <TransactionActor>[]) {
        if (newAccount.transactionActors
                ?.any((a) => a.type == actor.type && a.value == actor.value) ==
            false) {
          await accountRepository.deleteTransactionActor(newAccount.id, actor);
        }
      }
    } else {
      newAccount = newAccount.copyWith(id: const Uuid().v4());
      transactionActors = newAccount.transactionActors ?? <TransactionActor>[];
      await accountRepository.add(newAccount.copyWith(transactionActors: null));
    }

    for (final actor in transactionActors) {
      await accountRepository.addTransactionActor(newAccount.id, actor);
    }
  }

  Future<Account> loadAccount(
    AccountRepository accountRepository,
    AccountFormBloc accountFormBloc,
    String? accountId,
  ) async {
    Account? account;

    if (accountId != null) {
      account = (await accountRepository.list(
        id: accountId,
        includeTransactionActors: true,
      ))
          .firstOrNull;
    }
    account ??= const Account(id: '');

    accountFormBloc.updateAccount(account);

    return account;
  }

  Widget _textField(
    String label, {
    void Function(String)? onChanged,
    TextEditingController? controller,
    String? defaultValue,
  }) =>
      TextFormField(
        controller: controller,
        initialValue: defaultValue,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.grey.shade100,
          focusColor: Colors.black,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        onChanged: onChanged,
      );

  Future<Account>? loadAccountFeature;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (loadAccountFeature == null) {
      final args = ModalRoute.of(
            context,
          )?.settings.arguments as Map<String, dynamic>? ??
          <String, dynamic>{};

      loadAccountFeature = loadAccount(
        context.read<AccountRepository>(),
        context.read<AccountFormBloc>(),
        args['accountId'] as String?,
      );
    }

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(24),
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
                        'Account',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () => _showExitDialog(context),
                    elevation: 0,
                    fillColor: Colors.grey.shade100,
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(const Size(42, 42)),
                    child: const Icon(Icons.close, size: 24),
                  ),
                  Positioned(
                    right: 0,
                    child: RawMaterialButton(
                      onPressed: () async {
                        await onSubmit(context);
                        Navigator.pop(context);
                      },
                      elevation: 0,
                      fillColor: Colors.grey.shade100,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(42, 42)),
                      child: const Icon(Icons.check_rounded, size: 24),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            FutureBuilder(
              future: loadAccountFeature,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CupertinoActivityIndicator());
                }
                return BlocBuilder<AccountFormBloc, Account>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => _selectProfilePic(
                            context.read<AccountFormBloc>(),
                          ),
                          child: Center(
                            child: ClipOval(
                              child: Container(
                                width: 128,
                                height: 128,
                                decoration: const BoxDecoration(
                                  color: Color(0xffe4e7e8),
                                  shape: BoxShape.circle,
                                ),
                                child: state.profilePicture == null
                                    ? Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Image.asset(
                                          'assets/images/profile-picture.png',
                                        ),
                                      )
                                    : Image.memory(
                                        base64Decode(
                                          state.profilePicture!,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        _textField(
                          'Name',
                          defaultValue: state.name,
                          onChanged: (value) => context
                              .read<AccountFormBloc>()
                              .updateAccountDetails(
                                name: value,
                              ),
                        ),
                        const SizedBox(height: 16),
                        _textField(
                          'Email',
                          defaultValue: state.email,
                          onChanged: (value) => context
                              .read<AccountFormBloc>()
                              .updateAccountDetails(
                                email: value,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Row(
                            children: [
                              Text(
                                'Wallets',
                                style: theme.textTheme.titleLarge,
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () => addTransactionActor(context),
                                child: const Text('+Add'),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: state.transactionActors?.length ?? 0,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final actor = state.transactionActors![index];
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Image.asset(
                                'assets/images/tokens/eth.png',
                                width: 24,
                              ),
                              title: Text(actor.value),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red.shade300,
                                ),
                                onPressed: () => context
                                    .read<AccountFormBloc>()
                                    .removeTransactionActor(index),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void addTransactionActor(BuildContext context) => showDialog(
        context: context,
        builder: (_) {
          TransactionType selectedType = TransactionType.Ethereum;
          final valueController = TextEditingController();

          return AlertDialog(
            title: const Text(
              'Add Transaction Actor',
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<TransactionType>(
                  value: selectedType,
                  onChanged: (value) {
                    if (value != null) {
                      selectedType = value;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Wallet Type',
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    focusColor: Colors.black,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  items: TransactionType.values.map((type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(
                        type.name,
                      ), // Assuming `type.name` gives the display text
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                _textField(
                  'Wallet Address',
                  controller: valueController,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                ),
              ),
              TextButton(
                onPressed: () {
                  final actor = TransactionActor(
                    type: selectedType.value,
                    value: valueController.text,
                  );
                  context.read<AccountFormBloc>().addTransactionActor(actor);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                ),
              ),
            ],
          );
        },
      );

  Future<void> _selectProfilePic(AccountFormBloc bloc) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final bytes = await File(pickedFile.path).readAsBytes();
      final base64 = base64Encode(bytes);
      bloc.updateProfilePicture(base64);
    }
  }

  void _showExitDialog(BuildContext context) => showDialog<bool>(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AlertDialog(
              title: const Text('Closing The Form ?'),
              content: const Text(
                'Once you close the form, you will lose youe unsaved data',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          );
        },
      );
}
