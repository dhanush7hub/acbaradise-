import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

// merge -

class DatabaseController extends GetxController {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  DatabaseController({required this.firestore, required this.auth});
  // : uid = FirebaseAuth.instance.currentUser!.uid;
  // : uid = FirebaseAuth.instance.currentUser?.uid ?? '';

//for adding purpose:
  Future<void> addPhoneNumber(String phoneNumber) async {
    print(
        "....................................................................................");
    print(FirebaseAuth.instance.currentUser!.uid);
    await firestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      'phoneNumber': phoneNumber,
      // 'verified': true,
    });
  }

  Future<void> addUserName(String userName) async {
    return await firestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      'userName': userName,
    }, SetOptions(merge: true));
  }

  // Future<void> verifystatus(String number) async {
  //   return await firestore.collection('confirmed').doc(number).set({
  //     'verified': true,
  //   });
  // }

  Future<void> confirmedcall(String number) async {
    return await firestore.collection('verified').doc(number).set({
      'confirm': true,
      'uid': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  //for deleting purpose:
}
