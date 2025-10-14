import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../routes/app_pages.dart';

class AuthController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;

  late Box box;

  @override
  void onInit() {
    super.onInit();
    box = Hive.box('appBox');
  }

  void login() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      box.put('isLoggedIn', true);
      box.put('email', email.value);
      Get.snackbar('Success', 'Login Successful');
      Get.offAllNamed(Routes.splash);
    } else {
      Get.snackbar('Error', 'Please enter valid credentials');
    }
  }

  void signup() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      // Simulate saving user info
      box.put('registeredEmail', email.value);
      box.put('registeredPassword', password.value);

      Get.snackbar('Success', 'Account Created Successfully');
      Get.offAllNamed(Routes.login);
    } else {
      Get.snackbar('Error', 'Please enter valid signup details');
    }
  }

  void logout() {
    box.put('isLoggedIn', false);
    box.delete('email');
    Get.offAllNamed(Routes.login);
    Get.snackbar('Logged Out', 'You have been logged out successfully');
  }
}
