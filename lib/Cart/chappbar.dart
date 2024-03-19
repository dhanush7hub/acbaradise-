import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Chappbar extends StatelessWidget {
  const Chappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            // Left part of the Row
            child: FittedBox(
              child: Row(
                children: [
                  Container(
                    margin:const EdgeInsets.only(right: 3),
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/Logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "AC BARADISE",
                    style: TextStyle(
                      fontFamily: 'RobotoSerif',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      shadows: [textShadow()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
