import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/functions/login_functions.dart';
import 'package:agrical_ii/presentation/forgot_password_screen.dart/forgot_password.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:agrical_ii/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.red10001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.red10001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgWelcome),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: getPadding(
                            left: 48, top: 29, right: 48, bottom: 29),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgLogos4removebgpreview,
                                  height: getVerticalSize(128),
                                  width: getHorizontalSize(208),
                                  margin: getMargin(right: 20)),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text(
                                      "Your number one Agriculture Calculator",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.66)))),
                              CustomTextFormField(
                                  controller: emailController,
                                  margin:
                                      getMargin(left: 30, top: 45, right: 10),
                                  contentPadding: getPadding(
                                      left: 12, top: 9, right: 12, bottom: 9),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Enter your email address",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.emailAddress,
                                  filled: true,
                                  fillColor: appTheme.gray500),
                              CustomTextFormField(
                                  controller: passwordController,
                                  margin:
                                      getMargin(left: 30, top: 30, right: 9),
                                  contentPadding: getPadding(
                                      left: 12, top: 9, right: 12, bottom: 9),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Enter your password",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  filled: true,
                                  fillColor: appTheme.gray500),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordPage()));
                                },
                                child: Padding(
                                    padding: getPadding(top: 27, right: 73),
                                    child: Text("Forgot Password?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallGray90082)),
                              ),
                              CustomElevatedButton(
                                width: getHorizontalSize(180),
                                height: getVerticalSize(32),
                                text: "Sign In",
                                margin: getMargin(top: 30, right: 29),
                                buttonStyle: CustomButtonStyles.fillIndigo300,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallInterBluegray50,
                                onTap: () {
                                  signIn(
                                    context,
                                    emailController,
                                    passwordController,
                                  );
                                },
                              ),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtYoudonthavean(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(
                                          top: 33, right: 23, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "You don’t have an account ? ",
                                                style:
                                                    theme.textTheme.bodySmall),
                                            TextSpan(
                                                text: "Sign Up",
                                                style: CustomTextStyles
                                                    .labelMediumInterIndigo400cc)
                                          ]),
                                          textAlign: TextAlign.left)))
                            ]))))));
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signupScreen.
  onTapTxtYoudonthavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
