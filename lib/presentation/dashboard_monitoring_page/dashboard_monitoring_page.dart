import 'package:agrical_ii/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardMonitoringPage extends StatefulWidget {
  const DashboardMonitoringPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardMonitoringPageState createState() => DashboardMonitoringPageState();
}

class DashboardMonitoringPageState extends State<DashboardMonitoringPage>
    with AutomaticKeepAliveClientMixin<DashboardMonitoringPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 34,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: theme.colorScheme.secondaryContainer,
                                  ),
                                  SizedBox(
                                    height: getVerticalSize(
                                      136,
                                    ),
                                    width: getHorizontalSize(
                                      292,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 37,
                                            ),
                                            child: Text(
                                              "What’s for today?",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMediumSecondaryContainer,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 11,
                                              right: 15,
                                            ),
                                            child: Text(
                                              "15/05/23",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelMediumGray900,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: getVerticalSize(
                                              136,
                                            ),
                                            width: getHorizontalSize(
                                              292,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                    width: getHorizontalSize(
                                                      292,
                                                    ),
                                                    child: Divider(
                                                      height: getVerticalSize(
                                                        1,
                                                      ),
                                                      thickness:
                                                          getVerticalSize(
                                                        1,
                                                      ),
                                                      color: theme.colorScheme
                                                          .secondaryContainer,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    height: getVerticalSize(
                                                      136,
                                                    ),
                                                    child: VerticalDivider(
                                                      width: getHorizontalSize(
                                                        1,
                                                      ),
                                                      thickness:
                                                          getVerticalSize(
                                                        1,
                                                      ),
                                                      color: theme.colorScheme
                                                          .secondaryContainer,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgAirplane,
                                                  height: getVerticalSize(
                                                    15,
                                                  ),
                                                  width: getHorizontalSize(
                                                    18,
                                                  ),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                    left: 15,
                                                    top: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(
                                137,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: theme.colorScheme.secondaryContainer,
                                endIndent: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 13,
                        ),
                        padding: getPadding(
                          left: 33,
                          top: 12,
                          right: 33,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.outline5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Text(
                                "Add new schedule",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeGray600,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgPlus,
                              height: getVerticalSize(
                                14,
                              ),
                              width: getHorizontalSize(
                                15,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 15,
                          right: 32,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 3,
                              ),
                              child: Text(
                                "The orange section at lane 50",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgEdit,
                              height: getVerticalSize(
                                17,
                              ),
                              width: getHorizontalSize(
                                18,
                              ),
                              margin: getMargin(
                                top: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 32,
                          ),
                          child: Text(
                            "Created.7 days ago",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.labelMediumGray900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: appTheme.gray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
