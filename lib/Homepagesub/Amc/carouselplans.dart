import 'package:acbaradise/textshadow.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Carouselplan extends StatefulWidget {
  const Carouselplan({super.key});

  @override
  _CarouselplanState createState() => _CarouselplanState();
}

class _CarouselplanState extends State<Carouselplan> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  final List<dynamic> _products = [
    {
      'title': 'Basic',
      'cost': '₹999',
      'description': 'Complete peace of mind with comprehensive AC care',
      'color': 'grey'
    },
    {
      'title': 'Standard',
      'cost': '₹399',
      'description':
          'Basic AC servicing and cleaning Basic AC servicing and cleaning',
      'color': 'gold'
    },
    {
      'title': 'Advance',
      'cost': '₹699',
      'description':
          'Essential AC care with the flexibility Basic AC servicing and cleaning',
      'color': 'blue'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 20),
            height: 230,
            width: 250,
            // color: Color.fromARGB(255, 124, 171, 165),
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                // aspectRatio: 16 / 9,
                aspectRatio: 16 / 10,

                viewportFraction: 0.60,
                enlargeCenterPage: true,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: _products.map((movie) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_currentIndex == _products.indexOf(movie)) {
                            _currentIndex = -1;
                          } else {
                            _currentIndex = _products.indexOf(movie);
                          }
                        });
                        _controller.animateToPage(_products.indexOf(movie));
                      },
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width,
                          // width: 300,
                          height: 214,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: _currentIndex == movie
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: _currentIndex == movie
                                ? [
                                    BoxShadow(
                                        color: Colors.blue.shade100,
                                        blurRadius: 30,
                                        offset: const Offset(0, 10))
                                  ]
                                : [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: -20,
                                        blurRadius: 20,
                                        offset: const Offset(0, 5))
                                  ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/Addnewaddress');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xffC5C5C5),
                                ),
                                gradient: movie['color'] == 'blue'
                                    ? const LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 235, 246, 254),
                                          Color.fromARGB(255, 158, 219, 255),
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                    : movie['color'] == 'gold'
                                        ? const LinearGradient(
                                            colors: [
                                              Color.fromARGB(
                                                  255, 255, 238, 198),
                                              Color(0xffFFB200),
                                            ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          )
                                        : const LinearGradient(
                                            colors: [
                                              Color(0xffFFFFFF),
                                              Color.fromARGB(255, 91, 90, 90),
                                            ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 4,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          movie['title'],
                                          style: TextStyle(
                                            fontFamily: 'Lexend',
                                            fontSize: 15,
                                            letterSpacing: -0.5,
                                            fontWeight: FontWeight.w500,
                                            shadows: [textShadow()],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          width: 71,
                                          height: 23,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 0.3,
                                              color: const Color(0xffC5C5C5),
                                            ),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  movie['cost'],
                                                  // '₹ 399',
                                                  style: const TextStyle(
                                                    fontFamily: 'Lexend',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -0.5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15,
                                            left: 30,
                                            right: 30,
                                            bottom: 7),
                                        child: Text(
                                          movie['description'],
                                          // 'Essential AC care with the flexibility',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Lexend',
                                            fontSize: 11,
                                            letterSpacing: -0.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 9,
                                                width: 9,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                  border: Border.all(
                                                    width: 0.3,
                                                    color:
                                                        const Color(0xffC5C5C5),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      blurRadius: 2,
                                                      offset:
                                                          const Offset(0, 3),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'Include Spares',
                                              style: TextStyle(
                                                fontFamily: 'Lexend',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: -0.5,
                                                shadows: [textShadow()],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      FittedBox(
                                        child: GestureDetector(
                                          onTap: () {
                                            // Get.toNamed('/Addnewaddress');
                                          },
                                          child: RichText(
                                            overflow: TextOverflow.clip,
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Buy Now >',
                                                  style: const TextStyle(
                                                    fontFamily: 'Lexend',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: -0.5,
                                                    color: Colors.black,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {},
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                    );
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
