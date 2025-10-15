import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/local_storage.dart';
import '../../routes/app_pages.dart';

class AuthController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;

  var isPasswordHidden = true.obs;

  var isOrganizer = false.obs;

  var formKey = null;

  bool validateForm() {
    // Ensure form key is not null and validation runs safely
    final formState = formKey?.currentState;
    if (formState == null) {
      debugPrint('❌ Form key is null');
      return false;
    }

    // Run built-in form validators (like TextFormField validators)
    if (!formState.validate()) {
      debugPrint('❌ Form validation failed');
      return false;
    }

    // Custom validation for email
    if (email.value.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter your email');
      return false;
    }
    if (!GetUtils.isEmail(email.value.trim())) {
      Get.snackbar('Error', 'Please enter a valid email address');
      return false;
    }

    // Custom validation for password
    if (password.value.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter your password');
      return false;
    }
    if (password.value.trim().length < 6) {
      Get.snackbar('Error', 'Password must be at least 6 characters');
      return false;
    }

    return true;
  }

  void setFormKey() {
    formKey = GlobalKey<FormState>();
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

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
