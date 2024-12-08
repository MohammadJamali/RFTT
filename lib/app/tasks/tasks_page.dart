import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timetracker/app/tasks/bloc/tasks_bloc.dart';
import 'package:timetracker/app/tasks/widgets/empty_ask.dart';
import 'package:timetracker/app/timer/view/timer_page.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker/utils/time.dart';
import 'package:timetracker/widgets/text_form_field.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:timetracker_repository/timetracker_repository.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({required this.project, super.key});

  static String route = '/tasks';

  final Project project;

  @override
  Widget build(BuildContext context) {
    final taskRepository = context.read<TaskRepository>();

    return BlocProvider(
      create: (context) => TasksBloc(taskRepository),
      child: TasksView(project: project),
    );
  }
}

class TasksView extends StatefulWidget {
  const TasksView({required this.project, super.key});

  final Project project;

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  Future<List<Task>> loadTasks(
    TaskRepository taskRepository,
    String projectId,
  ) async {
    return await context.read<TaskRepository>().list(projectId: projectId);
  }

  Future<List<Task>>? loadTasksFeature;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final args = ModalRoute.of(
          context,
        )?.settings.arguments as Map<String, dynamic>? ??
        <String, dynamic>{};
    final projectId = args['projectId'] as String;

    loadTasksFeature ??= loadTasks(
      context.read<TaskRepository>(),
      projectId,
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => addTask(context),
        tooltip: 'New Task',
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 24, left: 24, right: 24),
        bottom: false,
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
                        'Tasks',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () => Navigator.pop(context),
                    elevation: 0,
                    fillColor: Colors.grey.shade100,
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(const Size(42, 42)),
                    child: const Icon(Icons.close, size: 24),
                  ),
                  Positioned(
                    right: 0,
                    child: RawMaterialButton(
                      onPressed: () async {},
                      elevation: 0,
                      fillColor: Colors.grey.shade100,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(42, 42)),
                      child: const Icon(Icons.edit, size: 24),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.project.title,
                    style: theme.textTheme.headlineLarge),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Description: ',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                        text: widget.project.description ?? '-',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: BlocConsumer<TasksBloc, TasksState>(
                  listener: (context, state) {
                    if (state is TasksLoaded) {
                      loadTasksFeature = loadTasks(
                        context.read<TaskRepository>(),
                        projectId,
                      );
                    }
                  },
                  builder: (_, state) {
                    return FutureBuilder(
                      future: loadTasksFeature,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CupertinoActivityIndicator());
                        }

                        if (snapshot.data?.isEmpty != false) {
                          return GestureDetector(
                            onTap: () => addTask(context),
                            child: const EmptyTaskCard(),
                          );
                        }

                        return Column(
                          children: snapshot.data!
                              .map(
                                (e) => TaskCard(task: e),
                              )
                              .toList(),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addTask(BuildContext context) => showDialog(
        context: context,
        builder: (_) {
          final titleController = TextEditingController();
          final descriptionController = TextEditingController();
          final deadlineController = TextEditingController();
          DateTime? selectedDeadline;
          List<String> selectedTags = [];

          return StatefulBuilder(
            builder: (_, setState) {
              return AlertDialog(
                title: const Text('New Task'),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StyledTextField(
                        'Title',
                        controller: titleController,
                      ),
                      const SizedBox(height: 16),
                      StyledTextField(
                        'Description',
                        controller: descriptionController,
                      ),
                      const SizedBox(height: 16),
                      StyledDateSelector(
                        'Select Date',
                        context: context,
                        controller: deadlineController,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                        onDateSelected: (selectedDate) {
                          print('Selected date: $selectedDate');
                        },
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        children:
                            ['Urgent', 'Important', 'Optional'].map((tag) {
                          return FilterChip(
                            label: Text(tag),
                            selected: selectedTags.contains(tag),
                            selectedColor: const Color(0xFFf35026),
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  selectedTags.add(tag);
                                } else {
                                  selectedTags.remove(tag);
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      try {
                        if (deadlineController.text.isNotEmpty) {
                          selectedDeadline =
                              DateTime.parse(deadlineController.text);
                        }
                      } catch (e) {
                        // Handle parsing error if needed
                      }

                      final task = Task(
                        id: UniqueKey().toString(),
                        projectId: widget.project.id,
                        title: titleController.text,
                        created: DateTime.now(),
                        description: descriptionController.text.isNotEmpty
                            ? descriptionController.text
                            : null,
                        deadline: selectedDeadline,
                        tags: selectedTags,
                      );

                      context.read<TasksBloc>().add(TasksEvent.addTask(task));
                      Navigator.pop(context);
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
      );
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    required this.task,
    super.key,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deadline',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  task.deadline != null
                      ? DateFormat.yMMMd().format(task.deadline!)
                      : 'Not Set',
                  style:
                      theme.textTheme.bodySmall?.copyWith(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              task.title,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text('Duration: ${secondToMinutes(task.duration)}',
                style: theme.textTheme.titleSmall),
            const SizedBox(height: 16),
            Text(
              task.description ?? '-',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: task.tags
                  .map(
                    (e) => Chip(
                      label: Text(e),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                    minimumSize:
                        WidgetStateProperty.all<Size>(const Size(200, 45)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, TimerPage.route);
                  },
                  child: const Text(
                    'Track',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('Edit')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
