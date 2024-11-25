import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:timetracker/app/invoice/list/view/list.dart';
import 'package:timetracker/app/landing/landing.dart';
import 'package:timetracker/app/tasks/tasks_page.dart';
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
        child: const InvoiceListPage(),
      ),
    );
  }
}
