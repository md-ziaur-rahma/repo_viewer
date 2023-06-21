import 'package:flutter/material.dart';

import 'ba_app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.customThemeColorGraySwatch,
    ),
    textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Poppins'),
  );

  static ThemeData dark = ThemeData.dark().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.customThemeColorGraySwatch,
    ),
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Poppins'),
  );
}
