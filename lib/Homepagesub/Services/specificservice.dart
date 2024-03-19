import 'package:acbaradise/Homepagesub/Services/twobuttons.dart';
import 'package:acbaradise/Homepagesub/acselection.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Specificservice extends StatefulWidget {
  const Specificservice({super.key});

  @override
  State<Specificservice> createState() => _SpecificserviceState();
}

class _SpecificserviceState extends State<Specificservice> {
  // bool isclicked = false;
  List<bool> isclicked = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isclicked = List<bool>.filled(3, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ownappbar(),
            const Divider(),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      shadows: [textShadow()],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "AC Repair Services",
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18,
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: double.infinity,
              height: 185,
              child: Image.asset(
                "assets/images/thumbsup.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Chill vibes incoming! Elevate your comfort game. Stay cool, stay awesome!",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 10,
                        letterSpacing: -0.5,
                        shadows: [textShadow()],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //
            const Acselection(),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              height: 120,
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFC5C5C5), width: 0.3)),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Gas Leak",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                          Container(
                            // margin: EdgeInsets.only(right: 5),
                            child: FittedBox(
                              child: Row(
                                children: [
                                  const Text(
                                    "₹999",
                                    style: TextStyle(
                                        fontFamily: 'Lexend', fontSize: 12),
                                  ),
                                  Checkbox(
                                    value: isclicked[index],
                                    onChanged: (value) {
                                      setState(() {
                                        isclicked[index] = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Divider())
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Row(
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            // fontWeight: FontWeight.w500,
                            color: Color(0xff8D8D8D),
                          ),
                        ),
                        Text(
                          " ₹ 999",
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 24,
                            letterSpacing: -0.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Twobuttons(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
