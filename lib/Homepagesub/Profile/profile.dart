import 'package:acbaradise/Home/homepage.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 45,
                        shadows: [textShadow()],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 55,
                        // fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                        shadows: [textShadow()],
                      ),
                    ),
                    SizedBox(
                      // width: screenWidth * 0.90,
                      width: screenWidth * 0.87,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAndToNamed('/Customersupport');
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/chat.png',
                            scale: 0.5,
                          ),
                          const FittedBox(
                            child: Text(
                              'customer \nsupport',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.10,
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.5)),
                      const BoxShadow(
                        color: Color(0xffF1F1F1),
                        spreadRadius: -4,
                        blurRadius: 2,
                        // offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                Align(
                  widthFactor: screenWidth,
                  heightFactor: 0.1,
                  child: InkWell(
                    radius: 15,
                    onTap: () {},
                    child: Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65),
                      ),
                      elevation: 10,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          elevation: 7,
                          shadowColor: Colors.grey,
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                            backgroundImage:
                                AssetImage('assets/images/defaultprofile.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  heightFactor: 1.6,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name:',
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 15,
                                  letterSpacing: -0.5
                                  // fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Flexible(
                              child: SizedBox(),
                            ),
                            Flexible(
                              child: Text(
                                'Dhanush YR',
                                softWrap: true,
                                // maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 14,
                                  letterSpacing: -0.5,
                                  // fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: screenHeight * 0.02),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mobile No:',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 15,
                                  // fontWeight: FontWeight.w600,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              Flexible(
                                child: SizedBox(),
                              ),
                              Flexible(
                                child: Text(
                                  '+919894648582',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w600,
                                    letterSpacing: -0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: screenHeight * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Address',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                        'assets/images/editicon.png'),
                                  ),
                                ],
                              ),
                              const Flexible(
                                child: SizedBox(
                                  width: 120,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  child: const Text(
                                    '14/B Rajamannar zkjfbksbgbsbfbbfhsfb',
                                    softWrap: true,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight * 0.06),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: -1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                // elevation: 6,
                                minimumSize: Size(screenWidth, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      'Current Plan',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: 26,
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth,
                                  ),
                                  ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return const LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 248, 240, 240),
                                          Color(0xffFFB200),
                                        ],
                                        tileMode: TileMode.mirror,
                                      ).createShader(bounds);
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 35, horizontal: 10),
                                      child: const Text(
                                        'Gold',
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 30,
                                          // fontWeight: FontWeight.w500,
                                          letterSpacing: -0.5,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight * 0.04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: -1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(screenWidth, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {
                                Get.toNamed(
                                  '/Cart',
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 15),
                                    child: Text(
                                      'Order History',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: 25,
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: const RotatedBox(
                                      quarterTurns: 2,
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight * 0.04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: -1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(screenWidth, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {
                                Get.toNamed(
                                  '/Amcconformationpage',
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 15),
                                    child: Text(
                                      'AMC Details',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: 25,
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: const RotatedBox(
                                      quarterTurns: 2,
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    right: screenWidth * 0.1,
                                    left: screenWidth * 0.2,
                                    top: screenHeight * 0.02),
                                width: 137,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: -1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(screenWidth, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.offUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Homepage()),
                                        (route) => false);
                                  },
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 17,
                                      // fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.7),
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed('/Premiumpage');
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(top: screenHeight * 0.03),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 250, 237, 237),
                                          Color.fromARGB(255, 255, 179, 0)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 1,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset('assets/images/crown.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
