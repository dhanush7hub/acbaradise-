import 'package:acbaradise/Payment/Selectaddress/Addaddress.dart';
import 'package:acbaradise/Payment/Selectaddress/Addresscart.dart';
import 'package:acbaradise/Payment/Selectaddress/reducedaddaddress.dart';
import 'package:acbaradise/Payment/Selectaddress/reducedaddcard.dart';
import 'package:acbaradise/Payment/Selectaddress/selecttwobutton.dart';
import 'package:acbaradise/Payment/carttext.dart';
import 'package:acbaradise/Payment/selectedcircle.dart';
import 'package:acbaradise/Payment/selecteddivider.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Selectaddressscreen extends StatelessWidget {
  const Selectaddressscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final isreduce = width < 250;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Ownappbar(),
            Container(
              width: width,
              margin: EdgeInsets.only(
                  top: 20, left: width * 0.07, right: width * 0.07),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width / 25,
                    ),
                    SelectedCircle(const Color.fromARGB(255, 0, 255, 8)),
                    SelectedDivider(),
                    SelectedCircle(Colors.grey),
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
              height: 20,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Select Delivery Address",
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  shadows: [textShadow()],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            isreduce
                ? ReducedAddressCard(
                    const Color.fromARGB(255, 0, 255, 8),
                    "Perarivalan D",
                    "No:190,Annai Bhavani Kovil street, Mahalingam nagar, Kanchipuram",
                    "6382219393")
                : AddressCard(
                    const Color.fromARGB(255, 0, 255, 8),
                    "Perarivalan D",
                    "No:190,Annai Bhavani Kovil street, Mahalingam nagar, Kanchipuram",
                    "6382219393"),
            isreduce
                ? ReducedAddressCard(
                    Colors.grey,
                    "Perarivalan D",
                    "No:190,Annai Bhavani Kovil street, Mahalingam nagar, Kanchipuram",
                    "6382219393")
                : AddressCard(
                    Colors.grey,
                    "Perarivalan D",
                    "No:190,Annai Bhavani Kovil street, Mahalingam nagar, Kanchipuram",
                    "6382219393"),
            isreduce ? const ReducedAddAddress() : const AddAddress(),
            const SizedBox(
              height: 40,
            ),
            Selecttwobutton(),
          ],
        ),
      ),
    );
  }
}
