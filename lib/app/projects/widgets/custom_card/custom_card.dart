import 'dart:math';

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

abstract class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.onClicked,
    super.key,
  });

  final VoidCallback onClicked;

  String generateRandom(int edgesCount, [int antropy = 2]) {
    final random = Random();
    final edges = List.generate(edgesCount, (_) => random.nextInt(9));
    return '$edgesCount-${9 - min(9, max(0, antropy))}-${edges.join()}';
  }

  Widget labelText(String text, TextStyle? style) =>
      Text(text, maxLines: 1, overflow: TextOverflow.fade, style: style);

  Widget cardLabel(ThemeData theme, String label, String value) {
    final style = theme.textTheme.labelSmall?.copyWith(color: Colors.white);
    return Row(
      children: [
        labelText(label, style),
        const Spacer(),
        labelText(value, style),
      ],
    );
  }

  Blob generateBlob({
    double blobSize = 125.0,
    String? randomId,
    Color? color,
    Widget? icon,
  }) {
    randomId ??= generateRandom(6);

    final innerBlob = Blob.fromID(
      id: [randomId],
      size: blobSize - 12,
      styles: BlobStyles(
        color: (color ?? Colors.white).withAlpha(61),
        fillType: BlobFillType.fill,
      ),
      child: icon ?? const Icon(
        Icons.play_arrow,
        size: 32,
        color: Colors.white,
      ),
    );

    final outerBlob = Blob.fromID(
      id: [randomId],
      size: blobSize,
      styles: BlobStyles(
        color: (color ?? Colors.white).withAlpha(138),
        fillType: BlobFillType.stroke,
        strokeWidth: 2,
      ),
      child: Center(child: innerBlob),
    );

    return outerBlob;
  }
}
