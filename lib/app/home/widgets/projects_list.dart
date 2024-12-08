import 'package:draggable_carousel_slider/draggable_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/home/bloc/home_bloc.dart';
import 'package:timetracker/app/home/widgets/add_edit_project_dialog.dart';
import 'package:timetracker/app/home/widgets/custom_card/project_card.dart';
import 'package:timetracker/app/home/widgets/custom_card/project_card_empty.dart';
import 'package:timetracker/app/tasks/tasks_page.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.projects.isEmpty) {
          return EmptyProjectCard(
            onClicked: () => showDialog<void>(
              context: context,
              builder: (_) => AddEditProjectDialog(context: context),
            ),
          );
        }

        final projects = state.projects
            .map(
              (project) => GestureDetector(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return RepositoryProvider.value(
                          value: context.read<ProjectRepository>(),
                          child: RepositoryProvider.value(
                            value: context.read<TaskRepository>(),
                            child: TasksPage(project: project),
                          ),
                        );
                      },
                      settings: RouteSettings(
                        arguments: {'projectId': project.id},
                      ),
                    ),
                  );
                },
                child: ProjectCard(
                  project: project,
                  onClicked: () {},
                  onDelete: () => context.read<HomeBloc>().add(
                        HomeEvent.deleteProject(
                          project.id,
                        ),
                      ),
                  onEdit: () => showDialog<void>(
                    context: context,
                    builder: (_) => AddEditProjectDialog(
                      project: project,
                      context: context,
                    ),
                  ),
                ),
              ),
            )
            .toList();

        if (projects.length == 1) return projects.first;
        return DraggableSlider(
          key: UniqueKey(),
          loop: true,
          children: projects,
        );
      },
    );
  }
}
