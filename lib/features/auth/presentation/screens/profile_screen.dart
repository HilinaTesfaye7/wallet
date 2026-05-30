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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile", 
          style: TextStyle(
            color: theme.textTheme.bodyMedium?.color,
          )
          ),
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
