import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({Key? key}) : super(key: key);

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
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: getMargin(left: 29, top: 46, right: 31),
                              padding: getPadding(
                                  left: 37, top: 49, right: 37, bottom: 49),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup61),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomElevatedButton(
                                      width: getHorizontalSize(124),
                                      height: getVerticalSize(23),
                                      text: "Number of fruits",
                                      margin: getMargin(top: 153),
                                      buttonStyle:
                                          CustomButtonStyles.fillBluegray200,
                                      buttonTextStyle:
                                          theme.textTheme.labelLarge!,
                                      onTap: () {
                                        onTapNumberof(context);
                                      },
                                      alignment: Alignment.centerRight,
                                    ),
                                    Container(
                                        width: getHorizontalSize(114),
                                        margin: getMargin(left: 2, top: 24),
                                        padding: getPadding(
                                            left: 9,
                                            top: 1,
                                            right: 9,
                                            bottom: 1),
                                        decoration: AppDecoration.txtFill,
                                        child: Text("Ripening Time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                              width: getHorizontalSize(117),
                              margin: getMargin(bottom: 199),
                              padding: getPadding(
                                  left: 24, top: 1, right: 24, bottom: 1),
                              decoration: AppDecoration.txtFill1,
                              child: Text("Spoil Time",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeRed100)))
                    ])))));
  }

  /// Navigates to the predictFruitsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the predictFruitsScreen.
  onTapNumberof(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.predictFruitsScreen);
  }
}
