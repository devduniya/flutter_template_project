import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AnimationExtensions on Animate {
  // Fade in + slide from bottom (more declarative)
  Animate applyFadeSlide({
    int milliseconds = 600,
    double offsetY = 0.2,
    Curve curve = Curves.easeOutCubic,
  }) => fadeIn(
    duration: milliseconds.ms,
    curve: curve,
  ).slideY(begin: offsetY, end: 0, duration: milliseconds.ms, curve: curve);

  // Fade in + scale up
  Animate applyFadeScale({
    int milliseconds = 600,
    double scale = 0.8,
    Curve curve = Curves.easeOutBack,
  }) => fadeIn(duration: milliseconds.ms, curve: curve).scale(
    begin: Offset(0, scale),
    end: Offset(0, 0.8),
    duration: milliseconds.ms,
    curve: curve,
  );

  // Fade in + slide down from top
  Animate applyFadeFromTop({
    int milliseconds = 600,
    double offsetY = -0.3,
    Curve curve = Curves.easeOutCubic,
  }) => fadeIn(
    duration: milliseconds.ms,
    curve: curve,
  ).slideY(begin: offsetY, end: 0, duration: milliseconds.ms, curve: curve);

  // Fade in + slide up from bottom
  Animate applyFadeFromBottom({
    int milliseconds = 600,
    double offsetY = 0.3,
    Curve curve = Curves.easeOutCubic,
  }) => fadeIn(
    duration: milliseconds.ms,
    curve: curve,
  ).slideY(begin: offsetY, end: 0.0, duration: milliseconds.ms, curve: curve);

  // Fade in + slide from left
  Animate applyFadeFromLeft({
    int milliseconds = 600,
    double offsetX = -0.3,
    Curve curve = Curves.easeOutCubic,
  }) => fadeIn(
    duration: milliseconds.ms,
    curve: curve,
  ).slideX(begin: offsetX, end: 0, duration: milliseconds.ms, curve: curve);

  // Fade in + slide from right
  Animate applyFadeFromRight({
    int milliseconds = 600,
    double offsetX = 0.3,
    Curve curve = Curves.easeOutCubic,
  }) => fadeIn(
    duration: milliseconds.ms,
    curve: curve,
  ).slideX(begin: offsetX, end: 0, duration: milliseconds.ms, curve: curve);

  // Pop-in elastic scale effect
  Animate applyPopIn({
    int milliseconds = 700,
    Curve curve = Curves.elasticOut,
  }) => scale(
    begin: Offset(0, 0.4),
    end: Offset(0, 0.8),
    duration: milliseconds.ms,
    curve: curve,
  );

  // Shimmer loading effect
  Animate applyShimmer({int milliseconds = 1500}) =>
      shimmer(duration: milliseconds.ms);

  // Shake effect
  Animate applyShake({int milliseconds = 500, double offsetX = 0.03}) =>
      shake(hz: 6, offset: Offset(offsetX, 0), duration: milliseconds.ms);

  // Soft/smooth fade-in
  Animate applySoftFade({int milliseconds = 900}) =>
      fadeIn(duration: milliseconds.ms);
}
