import 'package:flutter/material.dart';
import 'package:wallet/core/widgets/customtext_field.dart';

class SignupScreen extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const SignupScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'Create Account 😒',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  color: theme.textTheme.bodyMedium?.color,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sign up to get started',
                  style: TextStyle(
                    color: theme.textTheme.bodyMedium?.color,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 18),
                CustomTextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hinT: 'Enter your email',
                ),
                SizedBox(height: 18),
                CustomTextField(
                  controller: passwordController,
                  obscureText: true,
                  hinT: 'Enter your password',
                ),
                const SizedBox(height: 18),
                CustomTextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  hinT: 'Confirm your password',
                ),
                const SizedBox(height: 8),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child:  Text(
                      'ALready have an account ? Login',
                      style: TextStyle(color: theme.textTheme.bodyMedium?.color),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      String email = emailController.text;
                      String password = passwordController.text;
                      String confirmPassword = confirmPasswordController.text;
                      print(email);
                      print(password);
                      print(confirmPassword);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                    foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
