import 'package:flutter/material.dart';

class SelectedDivider extends StatelessWidget {
  const SelectedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 1.5,
      width: width / 4,
      color: Colors.black,
    );
  }
}
