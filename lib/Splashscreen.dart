import 'dart:async';

import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoapp();
  }

  _navigatetoapp() async {
    // Timer(Duration(seconds: 2), () {
    //   Get.offNamed('/');
    // });
    await Future.delayed(
      Duration(seconds: 2),
      () {
        Get.offNamed('/');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/Logo.png'),
            ),
            Flexible(
              child: Text(
                "AC BARADISE",
                style: TextStyle(
                  fontFamily: 'RobotoSerif',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  shadows: [textShadow()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
