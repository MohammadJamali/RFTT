import 'package:flutter/material.dart';
import 'package:timetracker/app/projects/widgets/custom_card/custom_card.dart';
import 'package:timetracker/utils/shimmer.dart';

class EmptyProjectCard extends CustomCard {
  const EmptyProjectCard({
    required super.onClicked,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const color = Colors.grey;
    final color38 = color.withAlpha(100);
    final color16 = color.withAlpha(32);

    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
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
                Icon(Icons.edit, color: color38),
                Icon(Icons.delete, color: color38),
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: onClicked,
                child: generateBlob(
                  color: color,
                  icon: const Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            solidContainer(color38, 64, 24),
            const SizedBox(height: 8),
            solidContainer(color38, 128, 24),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                solidContainer(color16, 64, 16),
                solidContainer(color16, 32, 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
