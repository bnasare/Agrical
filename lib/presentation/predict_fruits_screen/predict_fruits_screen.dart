import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PredictFruitsScreen extends StatelessWidget {
  const PredictFruitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.red10001,
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    height: getVerticalSize(596),
                    width: double.maxFinite,
                    padding: getPadding(left: 13, top: 8, right: 13, bottom: 8),
                    decoration: AppDecoration.fill,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: getVerticalSize(143),
                              width: getHorizontalSize(142),
                              margin: getMargin(top: 63),
                              decoration: BoxDecoration(
                                  color: appTheme.red100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(71))))),
                      CustomImageView(
                          svgPath: ImageConstant.imgPolygon1,
                          height: getVerticalSize(148),
                          width: getHorizontalSize(147),
                          alignment: Alignment.topLeft,
                          margin: getMargin(left: 51, top: 98)),
                      CustomImageView(
                          svgPath: ImageConstant.imgPolygon3,
                          height: getVerticalSize(118),
                          width: getHorizontalSize(152),
                          alignment: Alignment.topRight,
                          margin: getMargin(top: 101, right: 41)),
                      CustomImageView(
                          svgPath: ImageConstant.imgPolygon2,
                          height: getVerticalSize(151),
                          width: getHorizontalSize(144),
                          alignment: Alignment.topLeft,
                          margin: getMargin(left: 52)),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: getMargin(left: 118, top: 85, right: 115),
                              padding: getPadding(
                                  left: 24, top: 18, right: 24, bottom: 18),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder51),
                              child: Container(
                                  height: getVerticalSize(57),
                                  width: getHorizontalSize(52),
                                  margin: getMargin(top: 7),
                                  padding: getPadding(
                                      left: 12, top: 5, right: 12, bottom: 5),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup62),
                                          fit: BoxFit.cover)),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCut,
                                        height: getVerticalSize(31),
                                        width: getHorizontalSize(26),
                                        alignment: Alignment.topCenter)
                                  ])))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(right: 49),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(right: 18),
                                        padding: getPadding(left: 9, right: 9),
                                        decoration: AppDecoration.outline1,
                                        child: Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("Number of fruits",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomElevatedButton(
                                                width: getHorizontalSize(114),
                                                height: getVerticalSize(23),
                                                text: "Ripening Time",
                                                margin: getMargin(top: 19),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryContainer,
                                                buttonTextStyle:
                                                    theme.textTheme.labelLarge!,
                                                onTap: () {
                                                  onTapRipeningtime(context);
                                                },
                                              ),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgMenuOnerrorcontainer,
                                                  height: getVerticalSize(30),
                                                  width: getHorizontalSize(48),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(6)),
                                                  margin: getMargin(
                                                      left: 54, bottom: 12))
                                            ]))
                                  ]))),
                      CustomElevatedButton(
                        width: getHorizontalSize(117),
                        height: getVerticalSize(23),
                        text: "Spoil Time",
                        margin: getMargin(bottom: 199),
                        buttonStyle: CustomButtonStyles.fillOnError,
                        buttonTextStyle: CustomTextStyles.labelLargeRed100,
                        alignment: Alignment.bottomLeft,
                        onTap: () {
                          onTapSpoiltime(context);
                        },
                      ),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup61,
                          height: getVerticalSize(322),
                          width: getHorizontalSize(274),
                          alignment: Alignment.topCenter,
                          margin: getMargin(top: 46))
                    ])))));
  }

  /// Navigates to the predictRipeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the predictRipeScreen.
  onTapRipeningtime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.predictRipeScreen);
  }

  /// Navigates to the predictSpoilScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the predictSpoilScreen.
  onTapSpoiltime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.predictSpoilScreen);
  }
}
