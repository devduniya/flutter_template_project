import 'package:flutter/material.dart';

class AppTextStyles {
  static const headline1 = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  static const headline2 = TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  static const body = TextStyle(fontSize: 16);
  static const small = TextStyle(fontSize: 12);

  static final textTheme = TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    bodyLarge: body,
    bodySmall: small,
  );

  static final textThemeDark = textTheme.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  );
}
