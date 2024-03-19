import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Reviewbottompage extends StatelessWidget {
  const Reviewbottompage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "Review",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lexend',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              shadows: [textShadow()],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //ippo

                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.cancel,
                      ),
                    ),
                  )
                ],
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          )),
                ),
              ),
              Text(
                "Rate this product",
                style: TextStyle(
                  color: const Color(0xFF5A5A5A),
                  fontFamily: 'Lexend',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  shadows: [textShadow()],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 90,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Add this line
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                      right: 5,
                    ),
                    child: const TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Write your review here...',
                        hintStyle: TextStyle(
                          color: Color(0xFF5A5A5A),
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.only(bottom: 6),
                      ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                child: Container(
                  height: 43,
                  width: 139,
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Add this line
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFDBE6EA))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
