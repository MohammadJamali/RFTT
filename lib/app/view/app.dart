import 'package:flutter/material.dart';
import 'package:timetracker/projects/view/projects_page.dart';
import 'package:timetracker/tasks/tasks_page.dart';
import 'package:timetracker/timer/timer.dart';
import 'package:timetracker/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  // TimerPage(title: "Project Title")

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const TasksView(),
    );
  }
}
