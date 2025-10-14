import 'package:get/get.dart';

import '../../data/local_storage.dart';
import '../../routes/app_pages.dart';

class AuthController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;

  /// Login user
  void login() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      // Save login state and email
      LocalStorage.write('isLoggedIn', true);
      LocalStorage.write('email', email.value);

      Get.snackbar('Success', 'Login Successful');
      Get.offAllNamed(Routes.splash);
    } else {
      Get.snackbar('Error', 'Please enter valid credentials');
    }
  }

  /// Signup user
  void signup() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      // Save registration info
      LocalStorage.write('registeredEmail', email.value);
      LocalStorage.write('registeredPassword', password.value);

      Get.snackbar('Success', 'Account Created Successfully');
      Get.offAllNamed(Routes.login);
    } else {
      Get.snackbar('Error', 'Please enter valid signup details');
    }
  }

  /// Logout user
  void logout() {
    LocalStorage.write('isLoggedIn', false);
    LocalStorage.delete('email');

    Get.offAllNamed(Routes.login);
    Get.snackbar('Logged Out', 'You have been logged out successfully');
  }

  /// Check if user is logged in
  bool get isLoggedIn => LocalStorage.read('isLoggedIn') ?? false;

  /// Get current logged-in email
  String get currentEmail => LocalStorage.read('email') ?? '';
}
