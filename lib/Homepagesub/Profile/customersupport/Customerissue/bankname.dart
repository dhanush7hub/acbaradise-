import 'package:flutter/material.dart';

class Bankname extends StatefulWidget {
  const Bankname({super.key});

  @override
  State<Bankname> createState() => _BanknameState();
}

class _BanknameState extends State<Bankname> {
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
                    "Enter Bank Name",
                    // "Enter Bank Name",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 2,
                ),
                height: 100,
                width: screenWidth * 0.37,
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
