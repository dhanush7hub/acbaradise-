import 'package:acbaradise/Homepagesub/Products/Productdetail/priceandcart.dart';
import 'package:acbaradise/Homepagesub/Products/Productdetail/productimage.dart';
import 'package:acbaradise/Homepagesub/Products/Productdetail/threeheading.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({super.key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ownappbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      // color: Colors.amber,
                      margin: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                        shadows: [textShadow()],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Voltas Platina",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 20,
                      letterSpacing: -0.5,
                      shadows: [textShadow()],
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 68.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.6),
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: const Color(0xFFF3F4F9),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          width: 0.4,
                          color: const Color(0xFFB8B9BC),
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          Text(
                            "3.5",
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 15,
                              letterSpacing: -0.5,
                              shadows: [textShadow()],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Productimage(),
            const SizedBox(height: 20),
            Threeheading(),
            const Priceandcart()
          ],
        ),
      ),
    );
  }
}
