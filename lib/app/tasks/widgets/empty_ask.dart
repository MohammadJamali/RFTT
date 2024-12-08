
import 'package:flutter/material.dart';

import 'package:timetracker/utils/shimmer.dart' as shimmerHelper;

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
                  style: ButtonStyle(
                    minimumSize:
                        WidgetStateProperty.all<Size>(const Size(200, 45)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(
                          color: shimmerHelper.color38,
                        ),
                      ),
                    ),
                  ),
                  onPressed: null,
                  child: const Text('New Task'),
                ),
                shimmerHelper.solidContainer(
                  shimmerHelper.color38,
                  86,
                  24,
                  borderRadius: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
