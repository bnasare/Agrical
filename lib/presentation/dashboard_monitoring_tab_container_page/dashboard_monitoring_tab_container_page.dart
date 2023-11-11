import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/presentation/dashboard_accomplished_page/dashboard_accomplished_page.dart';
import 'package:agrical_ii/presentation/dashboard_monitoring_page/dashboard_monitoring_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardMonitoringTabContainerPage extends StatefulWidget {
  const DashboardMonitoringTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardMonitoringTabContainerPageState createState() =>
      DashboardMonitoringTabContainerPageState();
}

class DashboardMonitoringTabContainerPageState
    extends State<DashboardMonitoringTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fill9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  205,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 8,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          bottom: 27,
                        ),
                        padding: getPadding(
                          left: 3,
                          top: 10,
                          right: 3,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.fill5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 9,
                                top: 12,
                                bottom: 7,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: appTheme.gray100,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder51,
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        98,
                                      ),
                                      width: getHorizontalSize(
                                        100,
                                      ),
                                      padding: getPadding(
                                        left: 2,
                                        top: 3,
                                        right: 2,
                                        bottom: 3,
                                      ),
                                      decoration: AppDecoration.fill4.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder51,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse491x95,
                                            height: getVerticalSize(
                                              91,
                                            ),
                                            width: getHorizontalSize(
                                              95,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                47,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                right: 4,
                                              ),
                                              color: appTheme.gray50001,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder10,
                                              ),
                                              child: Container(
                                                height: getVerticalSize(
                                                  19,
                                                ),
                                                width: getHorizontalSize(
                                                  20,
                                                ),
                                                padding: getPadding(
                                                  left: 2,
                                                  top: 1,
                                                  right: 2,
                                                  bottom: 1,
                                                ),
                                                decoration: AppDecoration.fill10
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCamera16x15,
                                                      height: getVerticalSize(
                                                        16,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15,
                                                      ),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "OHENEBA, Kwame",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelLargeYellow50,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgEditRed200,
                                          height: getVerticalSize(
                                            9,
                                          ),
                                          width: getHorizontalSize(
                                            11,
                                          ),
                                          margin: getMargin(
                                            left: 1,
                                            top: 5,
                                            bottom: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Citrus Farms (5 yrs +)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsOnErrorContainer,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCall,
                                    height: getVerticalSize(
                                      15,
                                    ),
                                    width: getHorizontalSize(
                                      16,
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      right: 7,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSettings,
                                    height: getVerticalSize(
                                      21,
                                    ),
                                    width: getHorizontalSize(
                                      34,
                                    ),
                                    margin: getMargin(
                                      top: 6,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCamera16x15,
                                    height: getVerticalSize(
                                      21,
                                    ),
                                    width: getHorizontalSize(
                                      29,
                                    ),
                                    margin: getMargin(
                                      top: 94,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(
                        34,
                      ),
                      width: double.maxFinite,
                      child: TabBar(
                        controller: tabviewController,
                        labelColor: appTheme.yellow50,
                        labelStyle: const TextStyle(),
                        unselectedLabelColor: appTheme.yellow50,
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: appTheme.gray40001,
                        tabs: const [
                          Tab(
                            child: Text(
                              "Monitoring",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Accomplished",
                              overflow: TextOverflow.ellipsis,
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
                  323,
                ),
                child: TabBarView(
                  controller: tabviewController,
                  children: const [
                    DashboardMonitoringPage(),
                    DashboardAccomplishedPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
