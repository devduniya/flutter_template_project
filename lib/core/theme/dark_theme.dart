import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: AppColors.primaryDark,
    secondary: AppColors.accent,
  ),
  textTheme: AppTextStyles.textThemeDark,
  useMaterial3: true,
);
