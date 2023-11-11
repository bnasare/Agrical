import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.red10001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.red10001,
            image: DecorationImage(
              image: AssetImage(ImageConstant.imgWelcome),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 21, top: 102, right: 21),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgUndrawgardeningree658,
                  height: getVerticalSize(135),
                  width: getHorizontalSize(298),
                  alignment: Alignment.centerLeft,
                ),
                Padding(
                  padding: getPadding(top: 39),
                  child: Text(
                    "Be a winner with AgriCal",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                ),
                Container(
                  width: getHorizontalSize(219),
                  margin: getMargin(top: 7),
                  child: Text(
                    "Say no to losses. Receive the right returns and enjoy the best of yield in every harvest",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
                Column(
                  children: [
                    CustomElevatedButton(
                      width: getHorizontalSize(180),
                      height: getVerticalSize(32),
                      text: "Let’s get started",
                      margin: getMargin(top: 55, bottom: 5),
                      buttonStyle: CustomButtonStyles.fillIndigo300,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallInterBluegray50,
                      onTap: () {
                        onTapLetsget(context);
                      },
                    ),
                    const SizedBox(height: 20),
                    // CustomElevatedButton(
                    //   width: getHorizontalSize(180),
                    //   height: getVerticalSize(32),
                    //   text: "Continue as guest",
                    //   margin: getMargin(bottom: 5),
                    //   buttonStyle: CustomButtonStyles.fillIndigo300,
                    //   buttonTextStyle:
                    //       CustomTextStyles.titleSmallInterBluegray50,
                    //   onTap: () => Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) =>
                    //               const ObjectDetectionScreen())),
                    // )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapLetsget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
