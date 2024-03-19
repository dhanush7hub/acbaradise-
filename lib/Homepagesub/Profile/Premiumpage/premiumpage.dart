import 'package:acbaradise/Homepagesub/Profile/Premiumpage/premium_box_diamond.dart';
import 'package:acbaradise/Homepagesub/Profile/Premiumpage/premium_box_gold.dart';
import 'package:acbaradise/Homepagesub/Profile/Premiumpage/premium_box_silver.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Premiumpage extends StatelessWidget {
  const Premiumpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 12,
                        shadows: [textShadow()],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: -3,
                                    blurRadius: 2,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Image.asset('assets/images/crown.png'),
                            ),
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Premium Plans',
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Premium_box_silver(),
              const SizedBox(
                height: 17,
              ),
              Premium_box_gold(),
              const SizedBox(
                height: 17,
              ),
              const Premium_box_diamond(),
            ],
          ),
        ),
      ),
    );
  }
}
