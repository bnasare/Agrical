import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/app_bar/appbar_circleimage.dart';
import 'package:agrical_ii/widgets/app_bar/appbar_image.dart';
import 'package:agrical_ii/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MScreen extends StatelessWidget {
  const MScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.red10001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(178),
                          width: double.maxFinite,
                          margin: getMargin(top: 16),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle31,
                                height: getVerticalSize(178),
                                width: getHorizontalSize(360),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapColumnmenu(context);
                                    },
                                    child: Container(
                                        padding: getPadding(top: 9, bottom: 9),
                                        decoration: AppDecoration.fill7,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomAppBar(
                                                  height: getVerticalSize(55),
                                                  leadingWidth: 37,
                                                  leading: AppbarImage(
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(27),
                                                      svgPath:
                                                          ImageConstant.imgMenu,
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 3,
                                                          bottom: 36)),
                                                  actions: [
                                                    Container(
                                                        margin: getMargin(
                                                            left: 10,
                                                            right: 10),
                                                        padding:
                                                            getPadding(all: 1),
                                                        decoration: AppDecoration
                                                            .fill4
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder28),
                                                        child: AppbarCircleimage(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse4,
                                                            margin: getMargin(
                                                                bottom: 1)))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 65,
                                                      right: 156,
                                                      bottom: 3),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    33),
                                                            width:
                                                                getHorizontalSize(
                                                                    45),
                                                            margin: getMargin(
                                                                bottom: 1),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgFluentweather,
                                                                      height:
                                                                          getVerticalSize(
                                                                              32),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              31),
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: Text(
                                                                          "12",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyLarge))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12,
                                                                bottom: 11),
                                                            child: Text("O",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .poppinsYellow50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 8,
                                                                bottom: 1),
                                                            child: Text("C",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        const Spacer(),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    6),
                                                            margin: getMargin(
                                                                top: 29),
                                                            child: AnimatedSmoothIndicator(
                                                                activeIndex: 0,
                                                                count: 3,
                                                                effect: ScrollingDotsEffect(
                                                                    spacing: 13,
                                                                    activeDotColor:
                                                                        appTheme
                                                                            .gray60001,
                                                                    dotColor: theme
                                                                        .colorScheme
                                                                        .onErrorContainer,
                                                                    dotHeight:
                                                                        getVerticalSize(
                                                                            6),
                                                                    dotWidth:
                                                                        getHorizontalSize(
                                                                            6))))
                                                      ]))
                                            ]))))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 4),
                              child: Padding(
                                  padding: getPadding(left: 5, right: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(350),
                                                    padding: getPadding(
                                                        left: 29,
                                                        top: 19,
                                                        right: 29,
                                                        bottom: 19),
                                                    decoration: AppDecoration
                                                        .fill5
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderBL24),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: SizedBox(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              77),
                                                                      child: Divider(
                                                                          height: getVerticalSize(
                                                                              3),
                                                                          thickness: getVerticalSize(
                                                                              3),
                                                                          color:
                                                                              appTheme.blueGray100)))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          234),
                                                                  margin: getMargin(
                                                                      left: 28,
                                                                      top: 36,
                                                                      right:
                                                                          29),
                                                                  child: Text(
                                                                      "“The discovery of agriculture was the first big step toward a civilized life”",
                                                                      maxLines:
                                                                          3,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 31),
                                                              child: SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          85),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              3),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              3),
                                                                      color: appTheme
                                                                          .blueGray100,
                                                                      endIndent:
                                                                          getHorizontalSize(
                                                                              8)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 1),
                                                              child: Text(
                                                                  "Arthur Keith",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineMedium))
                                                        ])))),
                                        Container(
                                            height: getVerticalSize(95),
                                            width: getHorizontalSize(105),
                                            margin: getMargin(top: 7),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapEllipsetwentyth(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      95),
                                                              width:
                                                                  getHorizontalSize(
                                                                      105),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray900,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(52)),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                        color: appTheme
                                                                            .black900
                                                                            .withOpacity(
                                                                                0.25),
                                                                        spreadRadius:
                                                                            getHorizontalSize(
                                                                                2),
                                                                        blurRadius:
                                                                            getHorizontalSize(
                                                                                2),
                                                                        offset: const Offset(
                                                                            3,
                                                                            2))
                                                                  ])))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCameraRed100,
                                                      height:
                                                          getVerticalSize(35),
                                                      width:
                                                          getHorizontalSize(45),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      margin:
                                                          getMargin(top: 28))
                                                ]))
                                      ]))))
                    ]))));
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hScreen.
  onTapColumnmenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }

  /// Navigates to the captureScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the captureScreen.
  onTapEllipsetwentyth(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.captureScreen);
  }
}
