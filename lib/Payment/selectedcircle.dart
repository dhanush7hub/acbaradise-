import 'package:flutter/material.dart';

class SelectedCircle extends StatelessWidget {
  Color color;
  SelectedCircle(this.color, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        const SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
