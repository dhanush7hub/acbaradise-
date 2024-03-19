import 'package:acbaradise/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;

  late final Rx<User?> firebaseUser;
  var verificationId = "".obs;

  Future<void> phoneAuthentication(String phoneNo) async {
    print("????????????????????????????????????????????????????????????");
    print(phoneNo);
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 120),
      verificationCompleted: (Credential) async {
        final UserCredential userCredential =
            await _auth.signInWithCredential(Credential);
        // navigate to next screen:
        if (userCredential.user != null) {
          print(
              'User signed in successfully!**************************************************');
          Get.to(Homepage());
        } else {
          print(
              'Failed to sign in user!************************************************************');
        }
      },
      verificationFailed: (e) {
        print("********************************************");
        print(e.code);
        if (e.code == "invalid-phone-number") {
          Get.showSnackbar(
            const GetSnackBar(
              message: "The provided phone number is not valid.",
              duration: Duration(seconds: 3),
            ),
          );
        } else {
          Get.showSnackbar(
            const GetSnackBar(
              message: "Something went wrong...Try again.",
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
    );
  }

  Future<void> verifyOTP(String otp, String number) async {
    await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verificationId.value, smsCode: otp));

    //     .then(
    //   (value) async {
    //     await linkaddPhoneNumber(number);
    //   },
    // );
    // if (credentials.user != null) {
    //   await linkaddPhoneNumber(number);
    //   return true;
    // } else {
    //   return false;
    // }
  }
}
