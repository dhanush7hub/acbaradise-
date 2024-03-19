import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Addresstwobutton extends StatelessWidget {
  const Addresstwobutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: const Color(0xFFDBE6EA),
              ),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: const FittedBox(
                      child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.black),
                      Text(
                        " Back",
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ))),
            ),
          ),
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 20, top: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/Selectaddressscreen');
              },
              style: ElevatedButton.styleFrom(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: const Color(0xFFDBE6EA),
              ),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 35),
                  child: const FittedBox(
                      child: Row(
                    children: [
                      Text(
                        "Add",
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      // Icon(Icons.arrow_forward, color: Colors.black),
                    ],
                  ))),
            ),
          ),
        ),
      ],
    );
  }
}
