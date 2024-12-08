import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timetracker/app/home/widgets/custom_card/custom_card.dart';
import 'package:timetracker/utils/time.dart';
import 'package:timetracker_api/timetracker_api.dart';

class ProjectCard extends CustomCard {
  const ProjectCard({
    required this.onDelete,
    required this.onEdit,
    required this.project,
    required super.onClicked,
    super.key,
  });

  final Project project;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final deadline = project.deadline != null
        ? DateFormat.yMMMd().format(project.deadline!)
        : 'Not Set';

    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFf35026),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: 24,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: onEdit,
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.white,
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Confirm Delete'),
                      content:
                          const Text('Are you sure you want to delete this?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            onDelete();
                            Navigator.pop(context);
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: onClicked,
                child: generateBlob(),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              project.title,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Deadline: $deadline',
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white70,
              ),
            ),
            const Spacer(),
            cardLabel(
              theme,
              'Tasks',
              '${project.finishedTasks} / ${project.totalTasks}',
            ),
            cardLabel(
              theme,
              'Duration',
              secondToMinutes(project.duration),
            ),
          ],
        ),
      ),
    );
  }
}