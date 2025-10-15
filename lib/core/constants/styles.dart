import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  // Headline / Display
  static const displayLarge = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.25,
  );
  static const displayMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
  );
  static const displaySmall = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );

  // Body / Regular
  static const bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );
  static const bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );
  static const bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  );

  // Caption / Small
  static const label = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  // Light Theme
  static final textTheme = TextTheme(
    displayLarge: displayLarge.copyWith(color: AppColors.textPrimary),
    displayMedium: displayMedium.copyWith(color: AppColors.textPrimary),
    displaySmall: displaySmall.copyWith(color: AppColors.textPrimary),
    bodyLarge: bodyLarge.copyWith(color: AppColors.textPrimary),
    bodyMedium: bodyMedium.copyWith(color: AppColors.textSecondary),
    bodySmall: bodySmall.copyWith(color: AppColors.textSecondary),
    labelSmall: label.copyWith(color: AppColors.textSecondary),
  );

  // Dark Theme
  static final textThemeDark = TextTheme(
    displayLarge: displayLarge.copyWith(color: AppColors.textPrimaryDark),
    displayMedium: displayMedium.copyWith(color: AppColors.textPrimaryDark),
    displaySmall: displaySmall.copyWith(color: AppColors.textPrimaryDark),
    bodyLarge: bodyLarge.copyWith(color: AppColors.textPrimaryDark),
    bodyMedium: bodyMedium.copyWith(color: AppColors.textSecondaryDark),
    bodySmall: bodySmall.copyWith(color: AppColors.textSecondaryDark),
    labelSmall: label.copyWith(color: AppColors.textSecondaryDark),
  );
}
