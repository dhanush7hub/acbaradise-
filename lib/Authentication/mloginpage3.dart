import 'package:acbaradise/Authentication/namecontroller.dart';
import 'package:acbaradise/Authentication/sharedpreference.dart';
import 'package:acbaradise/Database/linkfiredatabase.dart';
import 'package:acbaradise/Home/homepage.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mloginpage3 extends StatefulWidget {
  String number;

  Mloginpage3(this.number, {super.key});

  @override
  State<Mloginpage3> createState() => _Mloginpage3State();
}

class _Mloginpage3State extends State<Mloginpage3> {
  FocusNode myFocusNode = FocusNode();
  final controller = Get.put(NameController());
  final sharednum = Get.put(PreferenceController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
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
                      child: Image.asset("assets/images/Logo.png",
                          fit: BoxFit.fill),
                    ),
                    //
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
                margin: const EdgeInsets.only(top: 10, bottom: 45),
                width: double.infinity,
                height: screenHeight * 0.39,
                child: Image.asset(
                  "assets/images/image35.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 0.34,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F9),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
                child: Column(
                  children: [
                    const Loginpage3textfield(),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.6,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(5),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFDBE6EA)),
                          ),
                          onPressed: () async {
                            await linkaddPhoneNumber(widget.number);
                            await sharednum.setphonenumvalue(widget.number);
                            await linkaddUserName(controller.name.text);
                            await linkconfirmedcall(widget.number);
                            // sharednum.setnamevalue(controller.name.text);
                            Get.to(const Homepage());
                          },
                          child: Text(
                            'GET COOL!',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              shadows: [textShadow()],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
