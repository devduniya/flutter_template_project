import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension WidgetAnimations on Widget {
  // Fade in + slide from bottom
  Widget animateFadeSlide({
    int durationMs = 600,
    double offsetY = 0.2,
    Curve curve = Curves.easeOutCubic,
  }) => Animate(
    effects: [
      FadeEffect(duration: durationMs.ms, curve: curve),
      MoveEffect(
        begin: Offset(0, offsetY),
        end: Offset(0, 0),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Fade in + scale
  Widget animateFadeScale({
    int durationMs = 600,
    double beginScale = 0.8,
    Curve curve = Curves.easeOutBack,
  }) => Animate(
    effects: [
      FadeEffect(duration: durationMs.ms, curve: curve),
      ScaleEffect(
        begin: Offset(beginScale, beginScale),
        end: const Offset(1, 1),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Fade in + slide from top
  Widget animateFadeFromTop({
    int durationMs = 600,
    double offsetY = -0.3,
    Curve curve = Curves.easeOutCubic,
  }) => Animate(
    effects: [
      FadeEffect(duration: durationMs.ms, curve: curve),
      MoveEffect(
        begin: Offset(0, offsetY),
        end: Offset(0, 0),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Fade in + slide from left
  Widget animateFadeFromLeft({
    int durationMs = 600,
    double offsetX = -0.3,
    Curve curve = Curves.easeOutCubic,
  }) => Animate(
    effects: [
      FadeEffect(duration: durationMs.ms, curve: curve),
      MoveEffect(
        begin: Offset(offsetX, 0),
        end: Offset(0, 0),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Fade in + slide from right
  Widget animateFadeFromRight({
    int durationMs = 600,
    double offsetX = 0.3,
    Curve curve = Curves.easeOutCubic,
  }) => Animate(
    effects: [
      FadeEffect(duration: durationMs.ms, curve: curve),
      MoveEffect(
        begin: Offset(offsetX, 0),
        end: Offset(0, 0),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Pop-in elastic scale
  Widget animatePopIn({
    int durationMs = 700,
    Curve curve = Curves.elasticOut,
  }) => Animate(
    effects: [
      ScaleEffect(
        begin: const Offset(0.5, 0.5),
        end: const Offset(1, 1),
        duration: durationMs.ms,
        curve: curve,
      ),
    ],
    child: this,
  );

  // Shimmer effect
  Widget animateShimmer({int durationMs = 1500}) =>
      Animate(child: this).shimmer(duration: durationMs.ms);

  // Shake effect
  Widget animateShake({int durationMs = 500, double offsetX = 0.03}) => Animate(
    effects: [
      ShakeEffect(hz: 6, offset: Offset(offsetX, 0), duration: durationMs.ms),
    ],
    child: this,
  );

  // Smooth fade-in
  Widget animateSoftFade({int durationMs = 900}) =>
      Animate(child: this).fadeIn(duration: durationMs.ms);
}
