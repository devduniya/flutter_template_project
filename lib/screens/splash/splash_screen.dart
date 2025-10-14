import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';
import '../../utils/animation_utils.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child:
            Text(
                  "Sports Live",
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge?.copyWith(color: Colors.white),
                ),
                // .animate()
                // .fadeIn(duration: 800.ms)
                // .slideY(begin: 1, end: 0, duration: 800.ms),
      ),
    );
  }
}
