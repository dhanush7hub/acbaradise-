import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Mycartwidget extends StatefulWidget {
  const Mycartwidget({super.key});

  @override
  State<Mycartwidget> createState() => _MycartwidgetState();
}

class _MycartwidgetState extends State<Mycartwidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
            // height: 160,
            width: double.infinity,
            child: Card(
                color: const Color(0xFFF3F4F9),
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(width: 0.4, color: Color(0xFFB8B9BC))),
                child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
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
                            Flexible(
                              child: Container(
                                height: 33,
                                width: 68,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: const Color(0xFFF3F4F9),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.only(left: 5, top: 3),
                                    child: const SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "3.5",
                                            style: TextStyle(
                                              fontFamily: 'Lexend',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                  margin: const EdgeInsets.only(right: 20),
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
                                // width: 150,
                                //margin: EdgeInsets.only(right: 10),

                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                                    fontWeight: FontWeight.w400,
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
                                                  child: const FittedBox(
                                                    child: Row(
                                                      children: [
                                                        FittedBox(
                                                          child: Icon(
                                                            Icons.minimize,
                                                            size: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          "2000",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Lexend',
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.add,
                                                          size: 15,
                                                        ),
                                                      ],
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
                        const SizedBox(
                          height: 33,
                        )
                      ],
                    ))));
      },
    );
  }
}
