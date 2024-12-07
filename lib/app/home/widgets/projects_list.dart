import 'package:draggable_carousel_slider/draggable_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/home/bloc/home_bloc.dart';
import 'package:timetracker/app/home/widgets/add_edit_project_dialog.dart';
import 'package:timetracker/app/home/widgets/custom_card/project_card.dart';
import 'package:timetracker/app/home/widgets/custom_card/project_card_empty.dart';

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
              (project) => ProjectCard(
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
