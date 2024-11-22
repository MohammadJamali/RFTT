import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker/projects/bloc/projects_bloc.dart';
import 'package:timetracker/projects/widgets/add_edit_project_dialog.dart';
import 'package:timetracker/projects/widgets/projects_list.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProjectsBloc()..add(const ProjectsEvent.started()),
      child: const ProjectsView(),
    );
  }
}

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      body: Column(
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
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        l10n.appTitle,
                        style: theme.textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile-picture.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Choose Projects',
                    style: theme.textTheme.headlineLarge,
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
                      onPressed: () => showDialog<void>(
                        context: context,
                        builder: (_) => AddEditProjectDialog(context: context),
                      ),
                      elevation: 0,
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(56, 56)),
                      child: const Icon(Icons.add, size: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
