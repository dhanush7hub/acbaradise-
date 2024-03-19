import 'package:flutter/material.dart';

class AddAddressCart extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final String hintText;

  AddAddressCart({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 10),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: textController, // Add the controller here
            decoration: InputDecoration(
              border: InputBorder.none, // Removes the underline
              hintText: hintText, // Use the hintText parameter
              hintStyle: const TextStyle(
                fontFamily: 'Lexend',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ), // Reduce the font size of the hint text
            ),
            textAlign: TextAlign.center, // Center-aligns the text
          ),
        ),
      ),
    );
  }
}
