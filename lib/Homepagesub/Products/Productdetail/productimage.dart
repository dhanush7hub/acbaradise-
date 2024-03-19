import 'package:flutter/material.dart';

class Productimage extends StatelessWidget {
  const Productimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 288,
            height: 104,
            child: Image.asset(
              "assets/images/innerviewproduct.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Flexible(
            child: Container(
              // color: Colors.amber,
              width: 253,
              height: 54,
              child: Card(
                color: const Color(0xFFF3F4F9),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Container(
                        // color: Colors.pinkAccent,
                        height: 35,
                        width: 97,
                        child: Image.asset(
                          "assets/images/smallproto.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        // color: Colors.pinkAccent,
                        height: 35,
                        width: 97,
                        child: Image.asset(
                          "assets/images/smallproto.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
