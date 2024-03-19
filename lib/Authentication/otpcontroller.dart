// ignore_for_file: must_be_immutable

import 'package:acbaradise/Authentication/authentication_repository.dart';
import 'package:acbaradise/Authentication/mloginpage3.dart';
import 'package:acbaradise/Authentication/sharedpreference.dart';
import 'package:acbaradise/Home/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  final otpNo = TextEditingController();
  final sharednum = Get.put(PreferenceController());

  Future verifyOTP(String otp, BuildContext context, String number) async {
    await AuthenticationRepository.instance.verifyOTP(otp, number);
    final snap = FirebaseFirestore.instance.collection("verified").doc(number);
    final snapdoc = await snap.get();
    // if (snapdoc.exists) {
    //   if (snapdoc.data()!['confirm'] == true) {
    //     await sharednum.setphonenumvalue(number);
    //     Get.offAll(Homescreen());
    //   } else {
    //     print("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
    //     await snap.update({
    //       'verified': true,
    //     });
    //     await sharednum.setphonenumvalue(number);
    //     Get.offAll(Homescreen());
    //   }
    // } else {
    //   Get.offAll(Mloginpage3(number));
    // }
    if (snapdoc.exists && snapdoc.data()!['confirm'] == true) {
      await sharednum.setphonenumvalue(number);
      Get.offAll(const Homepage());
    }
    if (snapdoc.exists && snapdoc.data()!['confirm'] == false) {
      print("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
      await snap.update({
        'confirm': true,
      });
      await sharednum.setphonenumvalue(number);
      Get.offAll(const Homepage());
    }
    if (!snapdoc.exists) {
      // await linkaddPhoneNumber(number);
      Get.offAll(Mloginpage3(number));
    }
    //////////////////////////////////////////////////////
    // final name = prefs.getString('_name');
    // if()
    //   }
    //   elif(snapdoc.exists && snapdoc.data()!['verified'] == true){

    //   }

    //    else {
    //     print("ooooooooooooooooooooooooooooooooooooooo");
    //     await linkaddPhoneNumber(number);
    //     print("pppppppppppppppppppppppppppppppppppppppppp");
    //     await linkverifystatus(number);
    //     print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
    //     Get.offAll(Mloginpage3());
    //   }
    //   // await linkaddPhoneNumber(number);
    //   // Get.offAll(Mloginpage3());
    // }
  }
  //
}

class Loginpage2textfield extends StatefulWidget {
  String no;
  Loginpage2textfield(this.no, {super.key});

  @override
  State<Loginpage2textfield> createState() => _Loginpage2textfieldState();
}

class _Loginpage2textfieldState extends State<Loginpage2textfield> {
  final controller = Get.put(OTPController());
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.06,
        // horizontal: 20,
      ),
      child: Material(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60,
            vertical: 3,
          ),
          child: TextFormField(
            controller: controller.otpNo,
            focusNode: myFocusNode,
            // onChanged: (value) {
            //   // _showSnackBarIfNeeded();
            // },
            onFieldSubmitted: (value) async {
              print("................................................");
              print(value);
              await controller.verifyOTP(
                  controller.otpNo.text, context, widget.no);
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontFamily: 'Lexend',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            decoration: const InputDecoration(
              hintText: 'Enter verification code',
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
    );
  }
}
