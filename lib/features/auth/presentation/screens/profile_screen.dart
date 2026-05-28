// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   final bool isDarkMode;
//   final ValueChanged<bool> onThemeChanged;
//   const ProfileScreen({
//     super.key,
//     required this.isDarkMode,
//     required this.onThemeChanged,
//   });

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   bool isBiometricEnabled = true;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       backgroundColor: theme.scaffoldBackgroundColor,

//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,

//         title: Text(
//           "Profile Settings",
//           style: TextStyle(
//             color: theme.textTheme.bodyLarge?.color,
//             fontWeight: FontWeight.bold,
//           ),
//         ),

//         centerTitle: true,
//       ),

//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),

//         child: Column(
//           children: [
//             const SizedBox(height: 30),

//             // DARK MODE
//             _buildToggleCard(
//               icon: Icons.dark_mode,
//               title: "Dark Mode",
//               subtitle: "Switch between light and dark theme",
//               value: widget.isDarkMode,
//               onChanged: widget.onThemeChanged,
//             ),

//             const SizedBox(height: 16),

//             // BIOMETRIC
//             _buildToggleCard(
//               icon: Icons.fingerprint,
//               title: "Biometric Security",
//               subtitle: "Use fingerprint or face unlock",
//               value: isBiometricEnabled,
//               onChanged: (v) {
//                 setState(() {
//                   isBiometricEnabled = v;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔥 REUSABLE CARD (FIXED SUBTITLE VISIBILITY)
//   Widget _buildToggleCard({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required bool value,
//     required ValueChanged<bool> onChanged,
//   }) {
//     final theme = Theme.of(context);

//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: theme.cardColor,
//         borderRadius: BorderRadius.circular(16),
//       ),

//       child: Row(
//         children: [
//           Icon(icon, color: theme.iconTheme.color),

//           const SizedBox(width: 12),

//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     color: theme.textTheme.bodyLarge?.color,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),

//                 const SizedBox(height: 4),

//                 // ✅ FIXED SUBTITLE (VISIBLE IN BOTH THEMES)
//                 Text(
//                   subtitle,
//                   style: TextStyle(
//                     color: theme.textTheme.bodyMedium?.color,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Switch(value: value, onChanged: onChanged),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const ProfileScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle()),
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
          value: widget.isDarkMode,
          onChanged: widget.onThemeChanged,
        ),
      ),
    );
  }
}
