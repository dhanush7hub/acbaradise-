import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Priceandcart extends StatelessWidget {
  const Priceandcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 35, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    "Price",
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 15,
                      letterSpacing: -0.5,
                      color: const Color(0xFF666666),
                      shadows: [textShadow()],
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    "\$ 1000",
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 24,
                      letterSpacing: -0.5,
                      color: Colors.black,
                      shadows: [textShadow()],
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    "M.R.P ₹1100",
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      letterSpacing: -0.5,
                      color: const Color(0xFF666666),
                      shadows: [textShadow()],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 20, top: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/Cart');
              },
              style: ElevatedButton.styleFrom(
                elevation: 3, // Apply elevation here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xFFDBE6EA),
              ),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 7),
                  child: FittedBox(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 20,
                        letterSpacing: -0.5,
                        color: Colors.black,
                        shadows: [textShadow()],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
