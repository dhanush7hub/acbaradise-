import 'package:get/get.dart';
import 'firedatabase.dart';

Future<void> linkaddPhoneNumber(String phoneNumber) async {
  DatabaseController db = Get.find();
  await db.addPhoneNumber(phoneNumber);
}

Future<void> linkaddUserName(String userName) async {
  DatabaseController db = Get.find();
  await db.addUserName(userName);
}

// Future<void> linkverifystatus(String number) async {
//   DatabaseController db = Get.find();
//   await db.verifystatus(number);
// }

Future<void> linkconfirmedcall(String no) async {
  DatabaseController db = Get.find();
  await db.confirmedcall(no);
}
