import 'package:acbaradise/Payment/Ordersummary/os_orderinfo.dart';
import 'package:acbaradise/Payment/carttext.dart';
import 'package:acbaradise/Payment/selectedcircle.dart';
import 'package:acbaradise/Payment/selecteddivider.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ordersummary extends StatelessWidget {
  const Ordersummary({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ownappbar(),
            Container(
              width: screenWidth,
              margin: EdgeInsets.only(
                  top: 20, left: screenWidth * 0.07, right: screenWidth * 0.07),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth / 25,
                    ),
                    SelectedCircle(const Color.fromARGB(255, 0, 255, 8)),
                    SelectedDivider(),
                    SelectedCircle(const Color.fromARGB(255, 0, 255, 8)),
                    SelectedDivider(),
                    SelectedCircle(Colors.grey),
                    SelectedDivider(),
                    SelectedCircle(Colors.grey),
                  ],
                ),
              ),
            ),
            CartText(),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 12,
                      shadows: [textShadow()],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Order Summary',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
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
              height: 17,
            ),
            os_orderinfo(),
            const SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/Orderconfirmed');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  border:
                      Border.all(width: 0.4, color: const Color(0xffB8B9BC)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          child: const Text(
                            'Cash On Delivery',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Container(
                          child: const RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/Orderconfirmed');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF),
                  border:
                      Border.all(width: 0.4, color: const Color(0xffB8B9BC)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        padding: const EdgeInsets.only(left: 30),
                        child: const Text(
                          'Pay Online',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Container(
                        child: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
