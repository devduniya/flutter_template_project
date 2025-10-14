import 'package:get/get.dart';

import '../screens/auth/auth_binding.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/splash/splash_binding.dart';
import '../screens/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => SignupScreen(),
      binding: AuthBinding(),
    ),
  ];
}
