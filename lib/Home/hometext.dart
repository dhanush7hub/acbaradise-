
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Hometext extends StatelessWidget {
  const Hometext({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin:const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              "Chill vibes incoming! Elevate \nyour comfort game. Stay \ncool, stay awesome!",
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 20,
                letterSpacing: -0.5,
                shadows: [textShadow()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
