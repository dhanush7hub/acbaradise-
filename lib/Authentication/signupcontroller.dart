import 'package:acbaradise/Authentication/authentication_repository.dart';
import 'package:acbaradise/Authentication/mloginpage2.dart';
import 'package:acbaradise/Authentication/sharedpreference.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final phoneNo = TextEditingController();

  Future<void> phoneAuthentication(String phoneNo) async {
    await AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}

class Loginpage1textfield extends StatefulWidget {
  const Loginpage1textfield({super.key});

  @override
  State<Loginpage1textfield> createState() => _Loginpage1textfieldState();
}

class _Loginpage1textfieldState extends State<Loginpage1textfield> {
  final controller = Get.put(SignUpController());
  final _formkey = GlobalKey<FormState>();
  FocusNode myFocusNode = FocusNode();
  bool _showSnackBar = false;

  void _showSnackBarIfNeeded() {
    if (controller.phoneNo.text.length > 10 && !_showSnackBar) {
      setState(() {
        _showSnackBar = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("You can only enter 10 digits."),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else if (controller.phoneNo.text.length <= 10 && _showSnackBar) {
      setState(() {
        _showSnackBar = false;
      });
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    }
  }

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
      child: Material(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.07,
            vertical: screenHeight * 0.004,
          ),
          child: Form(
            key: _formkey,
            child: TextFormField(
              controller: controller.phoneNo,
              focusNode: myFocusNode,
              onChanged: (value) {
                _showSnackBarIfNeeded();
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontFamily: 'Lexend',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                prefixIcon: Text(
                  "+91  ",
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                prefixIconConstraints:
                    BoxConstraints(minHeight: 10, minWidth: 10),
                hintText: 'Enter your mobile number',
                prefixStyle: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
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

class mloginpage1button extends StatefulWidget {
  const mloginpage1button({super.key});

  @override
  State<mloginpage1button> createState() => _mloginpage1buttonState();
}

class _mloginpage1buttonState extends State<mloginpage1button> {
  final controller = Get.put(SignUpController());
  final sharednum = Get.put(PreferenceController());

  String formatPhoneNumber(String countryCode, String phoneNumber) {
    return '+$countryCode$phoneNumber';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.06,
      width: screenWidth * 0.6,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(const Color(0xFFDBE6EA)),
        ),
        onPressed: () async {
          String formattedPhoneNumber =
              formatPhoneNumber('91', controller.phoneNo.text.trim());
          //
          if (formattedPhoneNumber.length == 3) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please enter some text'),
                duration: Duration(seconds: 2),
                behavior: SnackBarBehavior.floating,
              ),
            );
          } else {
            if ((formattedPhoneNumber.length < 13) |
                (formattedPhoneNumber.length > 13)) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please enter proper number'),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            } else {
              await SignUpController.instance
                  .phoneAuthentication(formattedPhoneNumber);
              //for network error i need to write.
              // await sharednum.setphonenumvalue(formattedPhoneNumber);
              Get.to(Mloginpage2(formattedPhoneNumber));
              // await linkaddPhoneNumber(formattedPhoneNumber);
            }
          }
        },
        child: Text(
          "GET OTP",
          style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            shadows: [textShadow()],
          ),
        ),
      ),
    );
  }
}
