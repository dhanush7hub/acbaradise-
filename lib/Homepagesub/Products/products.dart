import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<ScrollController> _scrollControllers = [];
  int cardCount = 2;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < cardCount; i++) {
      _scrollControllers.add(ScrollController());
    }
  }

  @override
  void dispose() {
    for (var controller in _scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  shadows: [textShadow()],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "Products",
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 20,
                            shadows: [textShadow()],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cardCount,
              itemBuilder: (context, index) {
                return Container(
                    height: 170,
                    width: screenWidth,
                    margin: const EdgeInsets.only(left: 3, right: 3, top: 15),
                    child: Card(
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFB8B9BC), width: 0.4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        color: const Color(0xFFF3F4F9),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Split AC's",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 12,
                                    shadows: [textShadow()],
                                  ),
                                ),
                                Flexible(
                                  child: Text("view all",
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: 9,
                                        shadows: [textShadow()],
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: 120.0,
                              child: Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    _scrollControllers[index].animateTo(
                                        _scrollControllers[index].offset - 98.0,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut);
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 4),
                                    height: 23,
                                    width: 20,
                                    child: const Material(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          bottomLeft: Radius.circular(0),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                      child:
                                          Icon(Icons.arrow_back_ios, size: 12),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        controller: _scrollControllers[index],
                                        itemCount: 10,
                                        itemBuilder: (context, innerIndex) {
                                          return InkWell(
                                            onTap: () {
                                              // Get.toNamed('/Productdetail');
                                              Get.toNamed('/Productmodal');
                                            },
                                            child: Container(
                                                height: 106,
                                                width: 98,
                                                child: Card(
                                                    shape: const RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            color: Color(
                                                                0xFFB8B9BC),
                                                            width: 0.4),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    elevation: 5,
                                                    child: Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            top: 25,
                                                            left: 2,
                                                            right: 2),
                                                        child:
                                                            Column(children: [
                                                          Container(
                                                              height: 34,
                                                              width: 94,
                                                              child: Image.asset(
                                                                  "assets/images/voltasimg.png")),
                                                          const SizedBox(
                                                              height: 8),
                                                          Text("Voltas",
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontFamily:
                                                                    'Lexend',
                                                                shadows: [
                                                                  textShadow()
                                                                ],
                                                              ))
                                                        ])))),
                                          );
                                        })),
                                InkWell(
                                  onTap: () {
                                    _scrollControllers[index].animateTo(
                                        _scrollControllers[index].offset + 98.0,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut);
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 4),
                                    height: 23,
                                    width: 20,
                                    child: const Material(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          topRight: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                      child: Icon(Icons.arrow_forward_ios,
                                          size: 12),
                                    ),
                                  ),
                                )
                              ]))
                        ])));
              })
        ]),
      ),
    );
  }
}
