import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PredictSpoilScreen extends StatelessWidget {
  const PredictSpoilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, top: 8, right: 13, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(380),
                          width: getHorizontalSize(303),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: getVerticalSize(143),
                                    width: getHorizontalSize(142),
                                    margin: getMargin(top: 63, right: 65),
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
                                margin: getMargin(top: 101, right: 10)),
                            CustomImageView(
                                svgPath: ImageConstant.imgPolygon2,
                                height: getVerticalSize(151),
                                width: getHorizontalSize(144),
                                alignment: Alignment.topLeft,
                                margin: getMargin(left: 52)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: getMargin(top: 85, right: 84),
                                    padding: getPadding(
                                        left: 24,
                                        top: 18,
                                        right: 24,
                                        bottom: 18),
                                    decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder51),
                                    child: Container(
                                        height: getVerticalSize(57),
                                        width: getHorizontalSize(52),
                                        margin: getMargin(top: 7),
                                        padding: getPadding(
                                            left: 12,
                                            top: 5,
                                            right: 12,
                                            bottom: 5),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup62),
                                                fit: BoxFit.cover)),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCut,
                                              height: getVerticalSize(31),
                                              width: getHorizontalSize(26),
                                              alignment: Alignment.topCenter)
                                        ])))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 37, bottom: 61),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomElevatedButton(
                                              width: getHorizontalSize(124),
                                              height: getVerticalSize(23),
                                              text: "Number of fruits",
                                              buttonStyle: CustomButtonStyles
                                                  .fillBluegray200,
                                              buttonTextStyle:
                                                  theme.textTheme.labelLarge!,
                                              onTap: () {
                                                onTapNumberof(context);
                                              },
                                              alignment: Alignment.centerRight),
                                          CustomElevatedButton(
                                              width: getHorizontalSize(114),
                                              height: getVerticalSize(23),
                                              text: "Ripening Time",
                                              margin: getMargin(top: 24),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryContainer,
                                              buttonTextStyle:
                                                  theme.textTheme.labelLarge!,
                                              onTap: () {
                                                onTapRipeningtime(context);
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    padding: getPadding(left: 24, right: 24),
                                    decoration: AppDecoration.outline3,
                                    child: Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("Spoil Time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeRed100)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup61,
                                height: getVerticalSize(322),
                                width: getHorizontalSize(274),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(bottom: 11))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgMenuOnerrorcontainer,
                          height: getVerticalSize(30),
                          width: getHorizontalSize(48),
                          radius: BorderRadius.circular(getHorizontalSize(6)),
                          margin: getMargin(left: 91, top: 10)),
                      Padding(
                          padding: getPadding(
                              left: 8, top: 45, right: 42, bottom: 5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFxemojihourglass,
                                height: getVerticalSize(41),
                                width: getHorizontalSize(59)),
                            Container(
                                height: getVerticalSize(37),
                                width: getHorizontalSize(225),
                                margin: getMargin(top: 2, bottom: 1),
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgHarvestlines,
                                          height: getVerticalSize(37),
                                          width: getHorizontalSize(225),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 15),
                                              child: Text("Harvest Time",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumRed100)))
                                    ]))
                          ]))
                    ]))));
  }

  /// Navigates to the predictFruitsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the predictFruitsScreen.
  onTapNumberof(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.predictFruitsScreen);
  }

  /// Navigates to the predictRipeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the predictRipeScreen.
  onTapRipeningtime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.predictRipeScreen);
  }
}
