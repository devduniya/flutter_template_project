import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.accent,
  ),
  textTheme: AppTextStyles.textTheme,
  useMaterial3: true,
);
