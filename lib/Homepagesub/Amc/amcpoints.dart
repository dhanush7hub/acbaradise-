import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Amcpoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: screenWidth,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 240, 240, 243),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          screenWidth > 300
              ? Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'assets/images/amcpoint.png',
                    fit: BoxFit.cover,
                  ),
                )
              : Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 100,
                    width: 150,
                    child: Image.asset(
                      'assets/images/amcpoint.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 25, bottom: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'AC Servicing',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.1,
                        shadows: [textShadow()],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Regular cleaning, inspection, and maintenance to ensure optimal performance.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.1,
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
