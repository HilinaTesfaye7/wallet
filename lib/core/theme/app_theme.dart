import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  // LIGHT
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      cardColor: Color(0xFFf5f6fa),
    );
  }

  // DARK
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkBackground, // From your AppColors
      cardColor: AppColors.cardFill,
    );
  }
}
