import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'auth_controller.dart';

class SignupScreen extends GetView<AuthController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    controller.setFormKey();

    return Scaffold(
      backgroundColor: isDark
          ? theme.colorScheme.surface
          : theme.colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 👤 Avatar / Icon
                CircleAvatar(
                      radius: 48,
                      backgroundColor: isDark
                          ? theme.colorScheme.primary.withOpacity(0.2)
                          : theme.colorScheme.primaryContainer,
                      child: Icon(
                        Icons.person_add_alt_1_rounded,
                        size: 48,
                        color: isDark
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onPrimaryContainer,
                      ),
                    )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .scale(
                      begin: const Offset(0, 0.8),
                      end: const Offset(0, 1),
                      duration: 600.ms,
                    ),

                const SizedBox(height: 32),

                // 🏷 Title
                Text(
                      "Create Account",
                      style: theme.textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isDark
                            ? theme.colorScheme.onSurface
                            : theme.colorScheme.onBackground,
                      ),
                      textAlign: TextAlign.center,
                    )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .slideY(begin: 1, end: 0, duration: 600.ms),

                const SizedBox(height: 8),

                // Subtitle
                Text(
                      "Join SportsLivv and start your journey!",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: isDark
                            ? theme.colorScheme.onSurfaceVariant.withOpacity(
                                0.8,
                              )
                            : theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    )
                    .animate()
                    .fadeIn(delay: 400.ms)
                    .slideY(begin: 1, end: 0, duration: 400.ms),

                const SizedBox(height: 40),

                // ✉️ Email field
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email_rounded),
                    filled: true,
                    fillColor: isDark
                        ? theme.colorScheme.surfaceVariant.withOpacity(0.2)
                        : theme.colorScheme.surfaceContainerHighest,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val) => controller.email.value = val,
                ).animate().fadeIn(delay: 300.ms).slideX(begin: -0.5, end: 0),

                const SizedBox(height: 20),

                // 🔒 Password field
                Obx(
                  () => TextField(
                    obscureText: controller.isPasswordHidden.value,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock_rounded),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isPasswordHidden.value
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                        ),
                        onPressed: controller.togglePasswordVisibility,
                      ),
                      filled: true,
                      fillColor: isDark
                          ? theme.colorScheme.surfaceVariant.withOpacity(0.2)
                          : theme.colorScheme.surfaceContainerHighest,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (val) => controller.password.value = val,
                  ).animate().fadeIn(delay: 400.ms).slideX(begin: 0.5, end: 0),
                ),

                const SizedBox(height: 16),

                // ☑️ Organizer Checkbox
                Obx(
                  () => CheckboxListTile(
                    title: Text(
                      'Are you an Organizer?',
                      style: TextStyle(
                        color: isDark
                            ? theme.colorScheme.onSurface
                            : theme.colorScheme.onBackground,
                      ),
                    ),
                    activeColor: theme.colorScheme.primary,
                    value: controller.isOrganizer.value,
                    onChanged: (val) =>
                        controller.isOrganizer.value = val ?? false,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),

                const SizedBox(height: 30),

                // 🔘 Signup Button
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.person_add_alt_1_rounded),
                    label: const Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      if (controller.validateForm()) {
                        Get.snackbar('Success', 'Form submitted successfully');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: theme.colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: isDark ? 1 : 4,
                    ),
                  ),
                ).animate().scale(duration: 400.ms).fadeIn(),

                const SizedBox(height: 20),

                // 🔙 Login redirect
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: isDark
                            ? theme.colorScheme.onSurfaceVariant
                            : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.offAllNamed(Routes.login),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 700.ms),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
