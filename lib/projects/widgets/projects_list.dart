import 'package:draggable_carousel_slider/draggable_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/projects/bloc/projects_bloc.dart';
import 'package:timetracker/projects/widgets/add_edit_project_dialog.dart';
import 'package:timetracker/projects/widgets/custom_card/project_card.dart';
import 'package:timetracker/projects/widgets/custom_card/project_card_empty.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
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
              (project) => ProjectCard(
                project: project,
                onClicked: () {},
                onDelete: () => context.read<ProjectsBloc>().add(
                      ProjectsEvent.deleteProject(
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
