import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Amc5 extends StatelessWidget {
  const Amc5({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        const Ownappbar(),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Annual Maintainance Contract",
          style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 19,
            letterSpacing: -0.5,
            shadows: [textShadow()],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          // color: Colors.amber,
          height: 230,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 8, right: 8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 3,
            color: const Color(0xFFF3F4F9),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                // margin: EdgeInsets.symmetric(
                //   horizontal: 18,
                //   // vertical: 12
                // ),
                // height: 220,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amber,
                      // margin: EdgeInsets.only(
                      //   left: screenWidth * 0.15,
                      //   //  right: screenWidth * 0.1
                      // ),
                      child: const FittedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.verified,
                              color: Colors.green,
                              size: 37,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Service Activated",
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 20,
                                letterSpacing: -0.5,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Split AC 1",
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 18,
                                letterSpacing: -0.5,
                                shadows: [textShadow()],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.edit_calendar,
                            size: 15,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    screenWidth > 165
                        ? Container(
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  child: Text(
                                    "Type of AC",
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 15,
                                      letterSpacing: -0.5,
                                      shadows: [textShadow()],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Split",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      shadows: [textShadow()],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              children: [
                                Text(
                                  "Type of AC",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  ),
                                ),
                                Text(
                                  "Split",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lexend',
                                    fontSize: 12,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    screenWidth > 280
                        ? Container(
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Scheme",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Scheme 1 (with spares)",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      shadows: [textShadow()],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              children: [
                                Text(
                                  "Scheme",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  ),
                                ),
                                Text(
                                  "Scheme 1 (with spares)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lexend',
                                    fontSize: 12,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "Ends on 26 April 2025",
                              style: TextStyle(
                                color: const Color(0XFF9F2524),
                                fontFamily: 'Lexend',
                                fontSize: 9,
                                letterSpacing: -0.5,
                                shadows: [textShadow()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Card(
                elevation: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 46),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    backgroundColor: const Color(0xFFDBE6EA),
                    elevation: 9,
                  ),
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Keep Shopping",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 6),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ])),
    );
  }
}
