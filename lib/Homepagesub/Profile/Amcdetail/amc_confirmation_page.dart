import 'package:acbaradise/Homepagesub/Profile/Amcdetail/amcconf_box.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Amcconfirmationpage extends StatelessWidget {
  const Amcconfirmationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              const Ownappbar(),
              const Divider(),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
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
                              'Annual Maintainance Contract',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 20,
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
              const SizedBox(
                height: 13,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return const Column(
                      children: [
                        amcconf_box(),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
