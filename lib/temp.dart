import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  final List<String> messages = [];
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Your Row widget
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 13,
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
            // Your ListView.builder widget
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4, // Change this to your desired number of cards
              itemBuilder: (context, index) {
                return Container(
                    height: 150,
                    child: const Card(
                      color: Colors.amber,
                    )); // Replace this with your Card widget
              },
            ),
          ],
        ),
      ),
    );
  }
}
