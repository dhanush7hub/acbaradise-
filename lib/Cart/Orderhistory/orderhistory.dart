import 'package:acbaradise/Cart/Orderhistory/reviewcheck.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Orderhistorywidget extends StatefulWidget {
  const Orderhistorywidget({super.key});

  @override
  State<Orderhistorywidget> createState() => _OrderhistorywidgetState();
}

class _OrderhistorywidgetState extends State<Orderhistorywidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
              // height: 160,
              width: double.infinity,
              child: Card(
                  color: const Color(0xFFF3F4F9),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      side: BorderSide(width: 0.4, color: Color(0xFFB8B9BC))),
                  child: Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                child: Text(
                                  "Order info",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ),
                              Reviewcheck(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                    height: 65,
                                    width: 170,
                                    child: Image.asset(
                                      "assets/images/Galanz_Air_Conditioner_2.jpg",
                                      fit: BoxFit.fill,
                                      width: double.infinity,
                                    )),
                              ),
                              Flexible(
                                child: Container(
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Voltas platina refreshed mint flavour",
                                              style: TextStyle(
                                                fontFamily: 'Lexend',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              // maxLines: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        color: Colors.amber,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                child: FittedBox(
                                                  child: Text(
                                                    "₹1000000",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Lexend',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      shadows: [textShadow()],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                height: 25,
                                                child: Card(
                                                  elevation: 5,
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 6, right: 6),
                                                    child: const FittedBox(
                                                      child: Text(
                                                        "Qty : " +
                                                            "200000", // Change this to your dynamic value
                                                        style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Arriving on Monday",
                                    // "Delivered on 25 September 2023",
                                    style: TextStyle(
                                      color: Color(0xFF00660A),
                                      fontFamily: 'Lexend',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )))),
        ],
      ),
    );
  }
}
