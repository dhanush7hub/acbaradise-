import 'package:acbaradise/Payment/Addnewaddress/Addaddresscart.dart';
import 'package:acbaradise/Payment/Addnewaddress/addresstwobuttons.dart';
import 'package:acbaradise/Payment/carttext.dart';
import 'package:acbaradise/Payment/selectedcircle.dart';
import 'package:acbaradise/Payment/selecteddivider.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Addnewaddress extends StatelessWidget {
  const Addnewaddress({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FittedBox(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 42,
                      width: 40,
                      child: Image.asset(
                        "assets/images/Logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "AC BARADISE",
                      style: TextStyle(
                        fontFamily: 'RobotoSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        shadows: [textShadow()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              margin: EdgeInsets.only(
                  top: 10, left: screenWidth * 0.07, right: screenWidth * 0.07),
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
              height: 10,
            ),
            Image.asset('assets/images/map.png'),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(top: 17),
              width: double.infinity,
              // height: 476,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F4F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const FittedBox(
                    child: Text(
                      'Add Your Address',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      // 'Lexend-reg'
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AddAddressCart(
                      hintText: 'Enter Flat / House No / Floor / Building'),
                  const SizedBox(
                    height: 5,
                  ),
                  AddAddressCart(hintText: 'Enter Street Name'),
                  const SizedBox(
                    height: 5,
                  ),
                  AddAddressCart(hintText: 'Enter your City'),
                  const SizedBox(
                    height: 5,
                  ),
                  AddAddressCart(hintText: 'Enter your Pin code'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Addresstwobutton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
