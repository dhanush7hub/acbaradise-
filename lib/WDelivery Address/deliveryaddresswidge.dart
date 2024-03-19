import 'package:flutter/material.dart';

class Deliveryaddresswidget extends StatelessWidget {
  const Deliveryaddresswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Container(
            width: double.infinity,
            height: 192,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 21.0,
                          height: 21.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF5FE76D),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Shyam Sunder M"),
                      const Text("14/B Ramanujam street"),
                      const Text("Tuticorin - Melur (PIN:6208002)"),
                      const Text("ph:+919894648582"),
                      //here:
                      Container(
                        height: 32,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 3, // Apply elevation here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            backgroundColor: const Color(0xFFFFFFFF),
                          ),
                          child: const Text(
                            "Edit Address",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lexend',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [Icon(Icons.delete)],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
