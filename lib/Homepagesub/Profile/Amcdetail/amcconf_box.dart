import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class amcconf_box extends StatelessWidget {
  const amcconf_box({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: -3,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Card(
          color: const Color.fromARGB(255, 237, 237, 241),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(width: 0.4, color: Color(0xffB8B9BC))),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Text(
                          'Split AC 1',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                            shadows: [textShadow()],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/editicon.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Type of AC',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Spilt',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Brand',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Voltas',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Scheme',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Scheme 1 (With spares)',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Serial Number',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '#156Ad45896HGI',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          // fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 20),
                          child: Text(
                            'Extend AMC',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 15,
                              // fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              color: Colors.black,
                              shadows: [textShadow()],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                FittedBox(
                  child: Text(
                    'Ends on 26 April 2025',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff9F2524),
                      shadows: [textShadow()],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
