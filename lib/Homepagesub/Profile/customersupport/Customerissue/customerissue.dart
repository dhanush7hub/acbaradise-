import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/accountnumber.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/bankname.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/ifsccode.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/owndivider.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/upi.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/uploadimagefile.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customerissue extends StatelessWidget {
  const Customerissue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ownappbar(),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 13,
                    ),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 60),
                            child: Flexible(
                              child: Text(
                                "Customer Support",
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  shadows: [textShadow()],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 17),
              height: 90,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Add this line
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 3),
                  child: const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Describe your issue here...',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lexend',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ImageUpload(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 17),
              width: double.infinity,
              // height: 275,
              child: Card(
                elevation: 5,
                //color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Add this line
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 14, right: 10, top: 18, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text("Enter your payment info:",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Bankname(),
                      const SizedBox(height: 8),
                      const Accountnumber(),
                      const SizedBox(height: 8),
                      const Ifsccode(),
                      const Owndivider(),
                      const Upi(),
                    ],
                  ),
                ),
              ),
            ),
            //new widget
          ],
        ),
      ),
    );
  }
}
