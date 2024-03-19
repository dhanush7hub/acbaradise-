import 'package:acbaradise/Home/homepage.dart';
import 'package:acbaradise/Payment/Orderconfirmed/oc_orderinfo.dart';
import 'package:acbaradise/Payment/carttext.dart';
import 'package:acbaradise/Payment/selectedcircle.dart';
import 'package:acbaradise/Payment/selecteddivider.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Orderconfirmed extends StatelessWidget {
  const Orderconfirmed({super.key});

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
                    SelectedCircle(const Color.fromARGB(255, 0, 255, 8)),
                    SelectedDivider(),
                    SelectedCircle(const Color.fromARGB(255, 0, 255, 8)),
                  ],
                ),
              ),
            ),
            CartText(),
            const SizedBox(
              height: 30,
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/orderconfirmedtick.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'ORDER CONFIRMED',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            oc_orderinfo(),
            const SizedBox(
              height: 14,
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'We will call u shortly for a Quick\n Verification of your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      shadows: [textShadow()],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            InkWell(
//                 MaterialPageRoute(builder: (context) => YourNewPage()),
//   (route) => false,
// );
              onTap: () {
                Get.offUntil(
                    MaterialPageRoute(builder: (context) => const Homepage()),
                    (route) => false);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffDBE6EA),
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
                        child: const Text(
                          'Keep Shopping',
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
                    const FittedBox(
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 12,
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
