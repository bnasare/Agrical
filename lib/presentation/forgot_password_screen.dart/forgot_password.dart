import 'package:agrical_ii/core/utils/size_utils.dart';
import 'package:agrical_ii/theme/custom_button_style.dart';
import 'package:agrical_ii/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../functions/forgotpassword_functions.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.red10001,
          body: Padding(
            padding: const EdgeInsets.only(top: 30, right: 30, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Enter your email to reset your password',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                TextField(
                  style: const TextStyle(fontSize: 20),
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 30),
                CustomElevatedButton(
                  width: getHorizontalSize(180),
                  height: getVerticalSize(32),
                  text: "Reset Password",
                  margin: getMargin(top: 30, right: 29),
                  buttonStyle: CustomButtonStyles.fillIndigo300,
                  buttonTextStyle: CustomTextStyles.titleSmallInterBluegray50,
                  onTap: () {
                    resetPassword(context, emailController);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
