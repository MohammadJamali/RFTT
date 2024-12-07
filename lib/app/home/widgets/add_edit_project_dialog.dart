import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/home/bloc/home_bloc.dart';
import 'package:timetracker/widgets/text_form_field.dart';
import 'package:timetracker_api/timetracker_api.dart';

class AddEditProjectDialog extends StatefulWidget {
  const AddEditProjectDialog({
    required this.context,
    this.project,
    super.key,
  });

  final Project? project;
  final BuildContext context;

  @override
  State<AddEditProjectDialog> createState() => _AddEditProjectDialogState();
}

class _AddEditProjectDialogState extends State<AddEditProjectDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _title;

  @override
  void initState() {
    super.initState();
    _title = widget.project?.title ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        title: Text(widget.project == null ? 'Add Project' : 'Edit Project'),
        content: Form(
          key: _formKey,
          child: StyledTextField(
            'Title',
            defaultValue: _title,
            onSaved: (value) => _title = value ?? '',
            validator: (value) =>
                value == null || value.isEmpty ? 'Required' : null,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                _formKey.currentState?.save();

                final project = widget.project?.copyWith(
                      title: _title,
                    ) ??
                    Project(
                      id: UniqueKey().toString(),
                      title: _title,
                      created: DateTime.now(),
                    );

                widget.context.read<HomeBloc>().add(
                      widget.project == null
                          ? HomeEvent.addProject(project)
                          : HomeEvent.editProject(project),
                    );

                Navigator.pop(context);
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
