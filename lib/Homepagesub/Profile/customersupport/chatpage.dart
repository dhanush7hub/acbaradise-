import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  final List<String> messages = [];

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ownappbar(),
            const Divider(),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 13,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "customer support",
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
            Container(
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              margin: const EdgeInsets.only(bottom: 20),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(
                      color: Color(0xFF656565),
                      width: 0.1,
                    )),
                color: const Color(0xFFF3F4F9),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          reverse: true,
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF3F4F9),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      width: 0.3,
                                      color: const Color(0xFFB8B9BC))),
                              margin: EdgeInsets.only(
                                  left: screenWidth * 0.2, bottom: 20),
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10, bottom: 10),
                              child: Text(messages[index]),
                            );
                          },
                        ),
                      ),
                      Container(
                        // height: 54,
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xFFB8B9BC)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                controller: controller,
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {
                                setState(() {
                                  messages.insert(0, controller.text);
                                  controller.clear();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      // Text("Data")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
