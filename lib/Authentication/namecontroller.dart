import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameController extends GetxController {
  static NameController get instance => Get.find();

  final name = TextEditingController();
}

class Loginpage3textfield extends StatefulWidget {
  const Loginpage3textfield({super.key});

  @override
  State<Loginpage3textfield> createState() => _Loginpage3textfieldState();
}

class _Loginpage3textfieldState extends State<Loginpage3textfield> {
  final controller = Get.put(NameController());
  FocusNode myFocusNode = FocusNode();

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(myFocusNode);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: screenWidth * 0.05,
          right: screenWidth * 0.05,
          top: screenHeight * 0.05,
          bottom: screenHeight * 0.063,
          // bottom: 50
        ),
        child: Material(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.004,
              bottom: screenHeight * 0.004,
              left: screenWidth * 0.24,
            ),
            child: TextFormField(
              controller: controller.name,
              focusNode: myFocusNode,
              onChanged: (value) {
                // _showSnackBarIfNeeded();
              },
              keyboardType: TextInputType.name,
              style:const TextStyle(
                fontFamily: 'Lexend',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              decoration:const InputDecoration(
                hintText: 'Enter your name',
                hintStyle: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF434343),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
