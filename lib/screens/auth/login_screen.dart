import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back!",
              style: Theme.of(context).textTheme.displayMedium,
            ).animate().fadeIn(duration: 600.ms).slideY(begin: 1),
            const SizedBox(height: 40),
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (val) => controller.email.value = val,
            ).animate().fadeIn(delay: 400.ms),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
              onChanged: (val) => controller.password.value = val,
            ).animate().fadeIn(delay: 600.ms),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: controller.login,
              child: const Text('Login'),
            ).animate().scale(duration: 400.ms),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Get.toNamed(Routes.signup),
              child: const Text('Create Account'),
            ).animate().fadeIn(delay: 800.ms),
          ],
        ),
      ),
    );
  }
}
