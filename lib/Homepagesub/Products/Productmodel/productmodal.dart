import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productmodal extends StatelessWidget {
  const Productmodal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    shadows: [textShadow()],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "Samsung",
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
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 2.2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed('/Productdetail');
                    },
                    child: Card(
                      color: const Color.fromARGB(255, 240, 241, 242),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.3,
                          color: Color(0xffB8B9BC),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'assets/images/innerviewproduct.png',
                              scale: 2.8,
                            ),
                          ),
                          Flexible(
                            child: SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 25,
                                ),
                                child: Text(
                                  'Maha Adjustable \nInverter AC, 1 Ton, 5 Star- 125V EAZQ',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 10,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FittedBox(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/Productdetail');
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    bottom: 10, left: 10, right: 10),
                                // height: 36,
                                // width: 128,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 240, 241, 242),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 0.4,
                                    color: Color(0xffB8B9BC),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      blurRadius: 3,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 20),
                                  child: Text(
                                    '₹\t1000',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 24,
                                      shadows: [textShadow()],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ); // Use a custom CardItem widget
                },
                itemCount: 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
