import 'package:flutter/material.dart';
import 'package:timetracker/app/view/app.dart';
import 'package:timetracker/l10n/l10n.dart';
import 'package:timetracker/utils/shimmer.dart' as shimmerHelper;

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Plan', style: theme.textTheme.headlineLarge),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Description: ',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.orange,
                        )),
                    TextSpan(
                        text: 'Earn \$100 for month with par-time jpbs',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.black,
                        )),
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TaskCard(),
                    EmptyTaskCard(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

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
                  'Today\'s Activity',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '7:00 - 11:00 PM',
                  style:
                      theme.textTheme.bodySmall?.copyWith(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Coffee Shop',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text('Barista Helper', style: theme.textTheme.titleSmall),
            const SizedBox(height: 16),
            Text(
              'Description asdaskdj asdj askdjha skjd asjkda skdj',
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Coffee')),
                Chip(label: Text('Host')),
                Chip(label: Text('Support')),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    child: Text("Track", style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.red),
                        minimumSize:
                            WidgetStateProperty.all<Size>(Size(200, 45)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                side: BorderSide(color: Colors.red)))),
                    onPressed: () => null),
                TextButton(onPressed: () => null, child: Text('Edit'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EmptyTaskCard extends StatelessWidget {
  const EmptyTaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: shimmerHelper.color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                shimmerHelper.solidContainer(shimmerHelper.color38, 64, 14),
                shimmerHelper.solidContainer(shimmerHelper.color38, 32, 14),
              ],
            ),
            const SizedBox(height: 18),
            shimmerHelper.solidContainer(shimmerHelper.color38, 86, 24),
            const SizedBox(height: 16),
            shimmerHelper.solidContainer(shimmerHelper.color38, 256, 24),
            const SizedBox(height: 4),
            shimmerHelper.solidContainer(shimmerHelper.color38, 200, 24),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [
                shimmerHelper.solidContainer(
                  shimmerHelper.color38,
                  80,
                  35,
                ),
                shimmerHelper.solidContainer(
                  shimmerHelper.color38,
                  80,
                  35,
                ),
                shimmerHelper.solidContainer(
                  shimmerHelper.color38,
                  80,
                  35,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    child: SizedBox(),
                    style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(Size(200, 45)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                side: BorderSide(
                                  color: shimmerHelper.color38,
                                )))),
                    onPressed: null),
                shimmerHelper.solidContainer(shimmerHelper.color38, 86, 24,
                    borderRadius: 8),
              ],
            )
          ],
        ),
      ),
    );
  }
}
