import 'dart:async';

import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  void onReady() {
    super.onReady();
    print("✅ SplashController started");
    Timer(const Duration(seconds: 2), () {
      print("➡️ Navigating to login");
      Get.offAllNamed(Routes.login);
    });
  }
}
