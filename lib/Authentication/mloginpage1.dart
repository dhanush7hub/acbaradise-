import 'package:acbaradise/Authentication/signupcontroller.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Mloginpage1 extends StatefulWidget {
  const Mloginpage1({super.key});

  @override
  State<Mloginpage1> createState() => _Mloginpage1State();
}

class _Mloginpage1State extends State<Mloginpage1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.11,
                bottom: screenHeight * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.12,
                    child:
                        Image.asset("assets/images/Logo.png", fit: BoxFit.fill),
                  ),
                  Text(
                    "AC BARADISE",
                    style: TextStyle(
                      fontFamily: 'RobotoSerif',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      shadows: [textShadow()],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: screenHeight * 0.047,
              ),
              // color: Colors.amber,
              width: screenWidth * 0.93,
              height: screenHeight * 0.27,
              child: Center(
                child: Image.asset(
                  "assets/images/image10.png",
                  fit: BoxFit.fill,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: screenHeight * 0.485,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 3.5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(
                  bottom: screenHeight * 0.05,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05,
                  top: screenHeight * 0.045,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: screenHeight * 0.036,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: screenWidth * 0.9,
                            child: const Column(
                              children: [
                                Text(" \"Escape into a realm of frosty",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("comfort! Experience the luxury",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("of our ACs and redefine your",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("idea of relaxation.\"",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Loginpage1textfield(),
                          const Column(
                            children: [
                              Text(
                                  "Please enter your mobile number to receive a verification code.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lexend',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text("Carrier rates may apply",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lexend',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: screenWidth * 0.02),
                            child: Text.rich(
                              TextSpan(
                                text: "By signing up you agree to our",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lexend',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: [
                                  TextSpan(
                                    text: " terms and conditions ",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Lexend',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                  const TextSpan(
                                    text: " and",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " privacy policy",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Lexend',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                          const mloginpage1button()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
