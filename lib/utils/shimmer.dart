import 'package:flutter/material.dart';

const color = Colors.grey;
final color38 = color.withAlpha(100);
final color16 = color.withAlpha(32);

Widget solidContainer(
  Color color,
  double width,
  double height, {
  double borderRadius = 20,
}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
    );
