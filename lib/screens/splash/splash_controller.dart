import 'dart:async';

import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Timer(const Duration(seconds: 2), () => Get.offAllNamed(Routes.login));
    super.onReady();
  }
}
