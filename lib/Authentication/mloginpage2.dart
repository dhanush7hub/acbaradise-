import 'package:acbaradise/Authentication/mloginpage1.dart';
import 'package:acbaradise/Authentication/otpcontroller.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mloginpage2 extends StatelessWidget {
  String no;

  Mloginpage2(this.no, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 237, 240),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: screenHeight * 0.11,
                      bottom: screenHeight * 0.07,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: screenWidth * 0.03),
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.12,
                          child: Image.asset("assets/images/Logo.png",
                              fit: BoxFit.fill),
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
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Loginpage2textfield(no),
                        //
                        const Text(
                          'Didn\$’t receive OTP?',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffDBE6EA),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: Size(
                                  screenWidth * 0.60, screenHeight * 0.06)),
                          child: Text(
                            'Resend OTP',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              shadows: [textShadow()],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.026),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.off(const Mloginpage1());
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: screenWidth * 0.05,
                            ),
                            child: Row(children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: screenWidth * 0.04,
                              ),
                              const Text("Back",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ]),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: screenWidth * 0.26,
                          ),
                          child: const Text(
                            '00.59',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8D8D8D),
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
              // color: Colors.amber,
              margin: EdgeInsets.only(
                top: screenHeight * 0.037,
              ),
              width: screenWidth * 0.9,
              height: screenHeight * 0.38,
              child: Image.asset(
                'assets/images/image11.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
