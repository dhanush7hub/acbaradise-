import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ownappbar extends StatelessWidget {
  const Ownappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            // Left part of the Row
            child: FittedBox(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 3),
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
          Flexible(
            // Right part of the Row
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/Cart');
              },
              child: Container(
                // color: Colors.amber,
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                        child: Image.asset("assets/images/truck.png",
                            fit: BoxFit.fill)),
                    const Center(
                      child: Text(
                        "My Cart",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
