import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.transparent,
        margin: const EdgeInsets.only(top: 15),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F4F9),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            onPressed: () {
              Get.toNamed('/Addnewaddress');
            },
            child: screenWidth > 290
                ? Container(
                    width: 330,
                    height: 69,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Flexible(
                            child: Text(
                              "Total:₹3998000",
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            width: 171,
                            height: 50,
                            decoration: BoxDecoration(
                                color:const Color(0xFFDBE6EA),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 0.4, color:const Color(0xFFE1EAEF))),
                            child: Container(
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Checkout ",
                                      style: TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Flexible(
                                    child: Icon(
                                      Icons.arrow_forward_sharp,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    width: 380,
                    height: 79,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Flexible(
                            child: Text(
                              "Total:₹3998000",
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            width: 171,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xFFDBE6EA),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 0.4,
                                    color: const Color(0xFFE1EAEF))),
                            child: Container(
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Checkout ",
                                      style: TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Flexible(
                                    child: Icon(
                                      Icons.arrow_forward_sharp,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )));
  }
}
