import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Spares extends StatelessWidget {
  const Spares({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                            "Spares",
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 20,
                              letterSpacing: -0.5,
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
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.9 / 2.2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/Productdetail');
                      },
                      child: Card(
                        color: const Color.fromARGB(255, 240, 241, 242),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Container(
                                  height: screenWidth * 0.3,
                                  width: screenWidth * 0.3,
                                  child: Image.asset(
                                    "assets/images/outdoorfan.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              FittedBox(
                                child: Text(
                                  "Indoor Motor",
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: -0.5,
                                    fontWeight: FontWeight.w500,
                                    shadows: [textShadow()],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ); // Use a custom CardItem widget
                },
                itemCount: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
