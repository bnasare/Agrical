import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SettingsOneScreen extends StatelessWidget {
  const SettingsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.red10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 17, right: 20, bottom: 17),
                decoration: AppDecoration.fill5,
                child: CustomElevatedButton(
                  width: double.maxFinite,
                  height: getVerticalSize(44),
                  text: "Search settings",
                  margin: getMargin(bottom: 5),
                  leftIcon: Container(
                      margin: getMargin(right: 8),
                      decoration:
                          BoxDecoration(color: theme.colorScheme.primary),
                      child: CustomImageView(svgPath: ImageConstant.imgSearch)),
                  buttonStyle: CustomButtonStyles.outlineGray5044,
                  buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                )),
            bottomNavigationBar: Container(
                margin: getMargin(left: 169, right: 154, bottom: 1),
                decoration: AppDecoration.fill8,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgHomeGray900,
                          height: getVerticalSize(23),
                          width: getHorizontalSize(27),
                          margin: getMargin(left: 3),
                          onTap: () {
                            onTapImgHome(context);
                          }),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("Home",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeSemiBold))
                    ]))));
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hScreen.
  onTapImgHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }
}
