import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:timetracker/app/home/view/home.dart';
import 'package:timetracker/app/landing/landing.dart';
import 'package:timetracker/app/projects/view/projects_page.dart';
import 'package:timetracker/app/settings/bloc/settings_bloc.dart';
import 'package:timetracker/app/settings/view/settings.dart';
import 'package:timetracker/app/tasks/tasks_page.dart';
import 'package:timetracker/app/timer/view/timer_page.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker/theme/theme.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TimeTrackerTheme.light,
      darkTheme: TimeTrackerTheme.dark,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: {
        LandingPage.route: (_) => const LandingPage(),
        ProjectsPage.route: (_) => const ProjectsPage(),
        TasksPage.route: (_) => const TasksPage(),
        TimerPage.route: (_) => const TimerPage(),
        SettingsPage.route: (_) => const SettingsPage(),
      },
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (_) => InvoiceRepository(
              invoiceApi: LocalStorageInvoiceApi(),
            ),
          ),
          RepositoryProvider(
            create: (_) => ProjectRepository(
              projectsApi: LocalStorageProjectApi(),
            ),
          ),
          RepositoryProvider(
            create: (_) => TaskRepository(
              tasksApi: LocalStorageTaskApi(),
            ),
          ),
        ],
        child: BlocProvider(
          create: (context) => SettingsBloc(),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (_, setting) {
              if (setting.actor != null) {
                return const HomePage();
              }
              return const LandingPage();
            },
          ),
        ),
      ),
    );
  }
}
