import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Twobuttons extends StatelessWidget {
  const Twobuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3, // Apply elevation here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xFFDBE6EA),
              ),
              child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 13,
                    //  horizontal: 5
                  ),
                  child: const FittedBox(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
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
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xFFDBE6EA),
              ),
              child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 13,
                  ),
                  child: const FittedBox(
                      child: Row(
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.black),
                    ],
                  ))),
            ),
          ),
        ),
      ],
    );
  }
}
