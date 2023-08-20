import 'package:agrical_ii/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardAccomplishedPage extends StatefulWidget {
  const DashboardAccomplishedPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardAccomplishedPageState createState() =>
      DashboardAccomplishedPageState();
}

class DashboardAccomplishedPageState extends State<DashboardAccomplishedPage>
    with AutomaticKeepAliveClientMixin<DashboardAccomplishedPage> {
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
                    top: 23,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 23,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The lime section at lane 20",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Saved.21 days ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumLightgreen90001,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                12,
                              ),
                              margin: getMargin(
                                top: 13,
                                bottom: 11,
                              ),
                            ),
                          ],
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
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 12,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The lemons section at lane 30",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Saved.26 days ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumLightgreen900,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                12,
                              ),
                              margin: getMargin(
                                left: 78,
                                top: 14,
                                bottom: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 11,
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
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 13,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The tangerine section at lane 09",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 3,
                                  ),
                                  child: Text(
                                    "Saved.32 days ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumLightgreen900,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                12,
                              ),
                              margin: getMargin(
                                left: 61,
                                top: 13,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
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
                      Padding(
                        padding: getPadding(
                          left: 23,
                          top: 14,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The grape section at lane 03",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Saved.40 days ago",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumLightgreen900,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(
                                16,
                              ),
                              width: getHorizontalSize(
                                12,
                              ),
                              margin: getMargin(
                                top: 15,
                                bottom: 6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
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
