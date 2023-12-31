import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/functions/signup_functions.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:agrical_ii/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    confirmPasswordController.dispose();
    passwordController.dispose();
    emailController.dispose();
    fullNameController.dispose();
    super.dispose();
  }

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
                        padding: getPadding(top: 23, bottom: 23),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 90),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLogos4removebgpreview,
                                    height: getVerticalSize(62),
                                    width: getHorizontalSize(105),
                                    alignment: Alignment.center,
                                    margin: getMargin(right: 56)),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 25, left: 30),
                                      child: Text("Akwaaba !",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.headlineSmall!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          1.88))))),
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text(
                                      "Let’s get to know you then we hop right into it",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodySmallBlack900)),
                              CustomTextFormField(
                                  width: getHorizontalSize(220),
                                  controller: fullNameController,
                                  margin: getMargin(top: 33),
                                  contentPadding: getPadding(
                                      left: 12, top: 10, right: 12, bottom: 10),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Enter your full name",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: appTheme.gray500),
                              CustomTextFormField(
                                  width: getHorizontalSize(222),
                                  controller: emailController,
                                  margin: getMargin(top: 14),
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
                                  width: getHorizontalSize(223),
                                  controller: passwordController,
                                  margin: getMargin(top: 14),
                                  contentPadding: getPadding(
                                      left: 12, top: 9, right: 12, bottom: 9),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Enter your password",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  filled: true,
                                  fillColor: appTheme.gray500),
                              CustomTextFormField(
                                  width: getHorizontalSize(223),
                                  controller: confirmPasswordController,
                                  margin: getMargin(top: 14),
                                  contentPadding: getPadding(
                                      left: 12, top: 9, right: 12, bottom: 9),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Confirm your password",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  filled: true,
                                  fillColor: appTheme.gray500),
                              CustomElevatedButton(
                                width: getHorizontalSize(208),
                                height: getVerticalSize(37),
                                text: "Sign Up",
                                margin: getMargin(top: 29),
                                buttonStyle:
                                    CustomButtonStyles.fillIndigo300TL2,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallInterBluegray50,
                                onTap: () {
                                  if (areAllFieldsFilled(
                                      emailController,
                                      passwordController,
                                      fullNameController,
                                      confirmPasswordController)) {
                                    signUp(
                                        context,
                                        emailController,
                                        passwordController,
                                        fullNameController,
                                        confirmPasswordController);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        content: SizedBox(
                                          height: 20,
                                          child: Center(
                                            child: Text(
                                              'Fill all fields to continue. ',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        duration: Duration(seconds: 5),
                                        margin: EdgeInsets.all(16),
                                      ),
                                    );
                                  }
                                },
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              top: 30, right: 7, bottom: 5),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Already have an account ? ",
                                                    style: theme
                                                        .textTheme.bodySmall),
                                                TextSpan(
                                                    text: "Sign In",
                                                    style: CustomTextStyles
                                                        .labelMediumInterIndigo400cc)
                                              ]),
                                              textAlign: TextAlign.left))))
                            ]))))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginScreen.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
