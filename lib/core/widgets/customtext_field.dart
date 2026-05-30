// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final String? hinT;
//   final bool obscureText;
//   final TextEditingController controller;
//   final TextInputType keyboardType;
//   const CustomTextField({
//     super.key,

//     required this.controller,
//     this.obscureText = false,
//     this.keyboardType = TextInputType.text,
//     this.hinT,
//   });
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       keyboardType: keyboardType,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: theme.cardColor,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide.none,
//         ),
//         hintText: hinT,
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 13,
//           vertical: 18,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hinT;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData? prefixIcon; // Added an optional icon match like the image

  const CustomTextField({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hinT,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle( color: theme.textTheme.bodyLarge?.color,), // White input text
      decoration: InputDecoration(
        filled: true,
        // Using semi-transparent white gives exactly that subtle translucent overlay color tint
        fillColor: Colors.white.withOpacity(0.06),
        hintText: hinT,
        hintStyle: const TextStyle(color: AppColors.textMuted, fontSize: 14),
        prefixIcon:
            prefixIcon != null
                ? Icon(prefixIcon, color: AppColors.textMuted, size: 20)
                : null,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        // Subtle regular state border outline
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.08),
            width: 1.0,
          ),
        ),
        // Highlighted border outline state when typing
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.primaryBlue,
            width: 1.2,
          ),
        ),
      ),
    );
  }
}
