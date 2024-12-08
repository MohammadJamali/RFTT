import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/account/account.dart';
import 'package:timetracker/app/account/bloc/account_bloc.dart';
import 'package:timetracker/app/home/bloc/home_bloc.dart';
import 'package:timetracker/app/home/widgets/add_edit_project_dialog.dart';
import 'package:timetracker/app/home/widgets/projects_list.dart';
import 'package:timetracker/app/settings/settings.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String route = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(context.read<ProjectRepository>())
        ..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<void> openAccountFormPage(
    BuildContext context,
    AccountRepository accountRepository,
    SettingsState state,
  ) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return RepositoryProvider.value(
            value: accountRepository,
            child: const AccountFormPage(),
          );
        },
        settings: RouteSettings(
          arguments: {
            'accountId': state.account!.id,
          },
        ),
      ),
    );

    final actor = await accountRepository.getTransactionActorByAccount(
      state.account!.id,
    );
    
    if (!context.mounted) return;
    context.read<SettingsBloc>().add(SettingsEvent.login(actor.first));

    accountsFuture = accountRepository.list();
  }

  Future<List<Account>>? accountsFuture;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final accountRepository = context.read<AccountRepository>();
    accountsFuture ??= accountRepository.list();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: SafeArea(
                    minimum: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icon.png',
                              width: 48,
                              height: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              l10n.appTitle,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () => openAccountFormPage(
                                context,
                                accountRepository,
                                state,
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                    state.account?.profilePicture == null
                                        ? const AssetImage(
                                            'assets/images/profile-picture.png',
                                          )
                                        : MemoryImage(
                                            base64Decode(
                                              state.account!.profilePicture!,
                                            ),
                                          ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              'Choose Projects',
                              style: theme.textTheme.headlineLarge,
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () => showDialog<void>(
                                context: context,
                                builder: (_) =>
                                    AddEditProjectDialog(context: context),
                              ),
                              child: const Text('+Add'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: Container(
                              width: 300,
                              alignment: Alignment.center,
                              child: const ProjectsList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  color: const Color(0xFFf4f5fe),
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    clipBehavior: Clip.none,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Wrap(
                        spacing: 16,
                        children: [
                          RawMaterialButton(
                            onPressed: () => openAccountFormPage(
                              context,
                              accountRepository,
                              state,
                            ),
                            elevation: 0,
                            fillColor: Colors.white,
                            shape: const CircleBorder(),
                            constraints:
                                BoxConstraints.tight(const Size(56, 56)),
                            child: const Icon(Icons.add, size: 18),
                          ),
                          FutureBuilder(
                            future: accountsFuture,
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) return Container();

                              return Row(
                                children: snapshot.data!
                                    .where((e) => e.id != state.account!.id)
                                    .map(
                                      (e) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: ClipOval(
                                          child: SizedBox(
                                            width: 56,
                                            height: 56,
                                            child: e.profilePicture == null
                                                ? Image.asset(
                                                    'assets/images/profile-picture.png',
                                                  )
                                                : Image.memory(
                                                    base64Decode(
                                                      e.profilePicture!,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
