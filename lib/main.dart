import 'package:acbaradise/Cart/cart.dart';
import 'package:acbaradise/Homepagesub/Products/Productmodel/productmodal.dart';
import 'package:acbaradise/Homepagesub/Profile/Amcdetail/amc_confirmation_page.dart';
import 'package:acbaradise/Homepagesub/Profile/Premiumpage/premiumpage.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/Customerissue/customerissue.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/customersupport.dart';
import 'package:acbaradise/Homepagesub/Services/specificservice.dart';
import 'package:acbaradise/Payment/Addnewaddress/Addnewaddress.dart';
import 'package:acbaradise/Payment/Orderconfirmed/orderconfirmed.dart';
import 'package:acbaradise/Payment/Ordersummary/order_summary.dart';
import 'package:acbaradise/Homepagesub/Products/Productdetail/productdetail.dart';
import 'package:acbaradise/Homepagesub/Profile/customersupport/chatpage.dart';
import 'package:acbaradise/Payment/Selectaddress/selectaddressscreen.dart';
import 'package:acbaradise/Splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise/Home/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Amc5(),
      initialRoute: '/Splashscreen'
      // '/Splashscreen'
      ,
      getPages: [
        // GetPage(name: '/Temp', page: () => Specificservice()
        //     // Amc5(),
        //     ),
        GetPage(
          name: '/Splashscreen',
          page: () => const Splashscreen(),
        ),
        GetPage(name: '/', page: () => const Homepage()),
        GetPage(
          name: '/Productdetail',
          page: () => const Productdetail(),
        ),
        GetPage(
          name: '/Productmodal',
          page: () => const Productmodal(),
        ),
        GetPage(
          name: '/Cart',
          page: () => const Cart(),
        ),
        GetPage(
          name: '/Specificservice',
          page: () => const Specificservice(),
        ),
        GetPage(
          name: '/Premiumpage',
          page: () => const Premiumpage(),
        ),
        GetPage(
          name: '/Addnewaddress',
          page: () => const Addnewaddress(),
        ),
        GetPage(
          name: '/Ordersummary',
          page: () => const Ordersummary(),
        ),
        //'/Orderconfirmed'
        GetPage(
          name: '/Orderconfirmed',
          page: () => const Orderconfirmed(),
        ),
        GetPage(
          name: '/Customersupport',
          page: () => const Customersupport(),
        ),
        GetPage(
          name: '/Chatpage',
          page: () => const Chatpage(),
        ),
        GetPage(
          name: '/Customerissue',
          page: () => const Customerissue(),
        ),
        GetPage(
          name: '/Selectaddressscreen',
          page: () => const Selectaddressscreen(),
        ),
        GetPage(
          name: '/Amcconformationpage',
          page: () => const Amcconfirmationpage(),
        ),
      ],

      // Scaffold(
      //   body: Temp(),
      // )
    );
  }
}

// import 'package:acbaradise/Authentication/mloginpage1.dart';
// import 'package:acbaradise/Authentication/namecontroller.dart';
// import 'package:acbaradise/Authentication/otpcontroller.dart';
// import 'package:acbaradise/Authentication/sharedpreference.dart';
// import 'package:acbaradise/Home/homepage.dart';
// import 'package:acbaradise/temp.dart';
// // import 'package:acbaradise/mhomescreen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'Authentication/authentication_repository.dart';
// import 'Database/firedatabase.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   Get.put(DatabaseController(
//     firestore: FirebaseFirestore.instance,
//     auth: FirebaseAuth.instance,
//   ));
//   // Get.put(VerificationController());
//   Get.put(AuthenticationRepository());
//   Get.put(OTPController());
//   Get.put(NameController());
//   Get.put(PreferenceController());
//   final prefs = await SharedPreferences.getInstance();
//   final phoneNumber = prefs.getString('_phonenum');
//   final snap =
//       FirebaseFirestore.instance.collection("verified").doc(phoneNumber);
//   final snapdoc = await snap.get();
//   final initialRoute = (phoneNumber != null &&
//           snapdoc.exists &&
//           snapdoc.data()!['confirm'] == true)
//       ? '/'
//       : '/mloginpage1';
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(initialRoute),
//   ));
// }

// class MyApp extends StatelessWidget {
//   final String initialRoute;

//   MyApp(this.initialRoute);
//   // final AuthController _authController = Get.put(AuthController());

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: initialRoute,
//       getPages: [
//         GetPage(name: '/', page: () => Homepage()),
//         GetPage(name: '/mloginpage1', page: () => Mloginpage1()),
//       ],
//       // Obx(
//       //   () => (_authController.firebaseUser.value != null)
//       //       ? FutureBuilder<DocumentSnapshot>(
//       //           future: FirebaseFirestore.instance
//       //               .doc('users/${FirebaseAuth.instance.currentUser!.uid}')
//       //               .get(),
//       //           builder: (context, snapshot) {
//       //             if (snapshot.hasData) {
//       //               final data = snapshot.data?.data() as Map<String, dynamic>?;
//       //               final name = data?['name'];
//       //               if (name != null) {
//       //                 return Homescreen();
//       //               } else {
//       //                 return Mloginpage3();
//       //               }
//       //             } else {
//       //               return Mloginpage1();
//       //             }
//       //           },
//       //         )
//       //       : Mloginpage1(),
//       // ),
//     );
//   }
// }
