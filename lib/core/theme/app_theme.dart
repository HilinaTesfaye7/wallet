// import 'package:flutter/material.dart';
// import '../constants/app_colors.dart';

// class AppTheme {
//   static ThemeData get lightTheme {
//     return ThemeData(
//       brightness: Brightness.light,
//       scaffoldBackgroundColor: Colors.white,
//       cardColor: const Color(0xFFF5F6FA),
//       iconTheme: const IconThemeData(color: Colors.black),
//       textTheme: const TextTheme(
//         bodyLarge: TextStyle(color: Colors.black),
//         bodyMedium: TextStyle(color: Colors.black87),
//       ),
//     );
//   }

//   static ThemeData get darkTheme {
//     return ThemeData(
//       brightness: Brightness.dark,
//       scaffoldBackgroundColor: AppColors.darkBackground,
//       cardColor: AppColors.cardFill,
//       iconTheme: const IconThemeData(color: Colors.white),
//       textTheme: const TextTheme(
//         bodyLarge: TextStyle(color: Colors.white),
//         bodyMedium: TextStyle(color: Colors.white70),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
  );
}
