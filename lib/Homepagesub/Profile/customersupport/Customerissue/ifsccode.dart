import 'package:flutter/material.dart';

class Ifsccode extends StatefulWidget {
  const Ifsccode({super.key});

  @override
  State<Ifsccode> createState() => _IfsccodeState();
}

class _IfsccodeState extends State<Ifsccode> {
  final FocusNode _textFieldFocusNode = FocusNode();
  final TextEditingController _textFieldController = TextEditingController();

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          _textFieldFocusNode.requestFocus();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                  child: const TextButton(
                      onPressed: null,
                      child: Text(
                        "Enter IFSC Code",
                        // "Enter IFSC Code",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
            ),
            Flexible(
              child: Container(
                height: 100,
                // width: 144,
                // color: Colors.green,

                width: screenWidth * 0.3,
                child: TextField(
                  focusNode: _textFieldFocusNode,
                  controller: _textFieldController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 8, right: 8, bottom: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
