import '../settings_screen/widgets/settings_item_widget.dart';
import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 2, bottom: 2),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(523),
                          width: double.maxFinite,
                          margin: getMargin(top: 7),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(523),
                                    width: double.maxFinite,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(right: 1),
                                    padding: getPadding(
                                        left: 24,
                                        top: 26,
                                        right: 24,
                                        bottom: 26),
                                    decoration: AppDecoration.fill1,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Row(children: [
                                                CustomIconButton(
                                                    height: 45,
                                                    width: 46,
                                                    padding:
                                                        getPadding(all: 10),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser)),
                                                Container(
                                                    height: getVerticalSize(42),
                                                    width:
                                                        getHorizontalSize(146),
                                                    margin: getMargin(
                                                        left: 25, top: 3),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                  "User Profile",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Text(
                                                                  "Name, Email, Contact Info",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelMedium))
                                                        ]))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 46,
                                                        width: 46,
                                                        padding:
                                                            getPadding(all: 11),
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFolder)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 25,
                                                            top: 2,
                                                            bottom: 16),
                                                        child: Text("Results",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 18, right: 90),
                                              child: ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            24));
                                                  },
                                                  itemCount: 3,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return SettingsItemWidget(
                                                        onTapBtnVector: () {
                                                      onTapBtnVector(context);
                                                    });
                                                  })),
                                          Padding(
                                              padding: getPadding(top: 27),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 46,
                                                              width: 46,
                                                              padding:
                                                                  getPadding(
                                                                      all: 7),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineBlack900TL232,
                                                              onTap: () {
                                                                onTapBtnIcbaselinesetti(
                                                                    context);
                                                              },
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgIcbaselinesettings)),
                                                          CustomIconButton(
                                                              height: 45,
                                                              width: 46,
                                                              margin: getMargin(
                                                                  top: 24),
                                                              padding:
                                                                  getPadding(
                                                                      all: 9),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .outlineBlack900TL233,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgQuestion))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23,
                                                            bottom: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1),
                                                                  child: Text(
                                                                      "Settings",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1),
                                                                  child: Text(
                                                                      "Theme, Security",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              28),
                                                                  child: Text(
                                                                      "Help & Support",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              2),
                                                                  child: Text(
                                                                      "IT support, FAQs",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ]))
                                                  ]))
                                        ])))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: getVerticalSize(24),
                          width: getHorizontalSize(32),
                          margin: getMargin(left: 156, top: 18),
                          onTap: () {
                            onTapImgHome(context);
                          }),
                      Padding(
                          padding: getPadding(left: 154, top: 1),
                          child: Text("Home",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeYellow50))
                    ]))));
  }

  /// Navigates to the dashboardMonitoringContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the dashboardMonitoringContainerScreen.
  onTapBtnVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardMonitoringContainerScreen);
  }

  /// Navigates to the settingsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsOneScreen.
  onTapBtnIcbaselinesetti(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsOneScreen);
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
