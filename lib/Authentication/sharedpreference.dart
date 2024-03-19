import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceController extends GetxController {
  static PreferenceController get instance => Get.find();
  final _phonenum = ''.obs;
  // final _name = ''.obs;
  String get myValue => _phonenum.value;
  // String get myValue => _phonenum.value;

  @override
  void onInit() async {
    super.onInit();

    // Load the value from SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    _phonenum.value = prefs.getString('_phonenum') ?? '';
    // _name.value = prefs.getString('_name') ?? '';
  }

  Future<void> setphonenumvalue(String value) async {
    // Update the value in SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('_phonenum', value);

    // Update the value in the state
    _phonenum.value = value;
  }

  // Future<void> setnamevalue(String value) async {
  //   // Update the value in SharedPreferences
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('_name', value);

  //   // Update the value in the state
  //   _name.value = value;
  // }
}
