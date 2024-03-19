import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, left: 10, top: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
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
                                  'Services',
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
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const FittedBox(
                      child: Text(
                        'Enjoy exclusive discounts with bulk orders of our services.',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          letterSpacing: -0.5,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Get.toNamed('/Specificservice');
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: -30,
                                  blurRadius: 3,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/thumbsup.png"),
                                // fit: BoxFit.cover,
                              ),
                            ),
                            height: 190,
                            width: double.infinity,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
