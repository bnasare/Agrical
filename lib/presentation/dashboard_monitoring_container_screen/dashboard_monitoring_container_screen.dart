import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/presentation/dashboard_monitoring_tab_container_page/dashboard_monitoring_tab_container_page.dart';
import 'package:agrical_ii/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardMonitoringContainerScreen extends StatelessWidget {
  DashboardMonitoringContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardMonitoringTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Phone:
        return AppRoutes.dashboardMonitoringTabContainerPage;
      case BottomBarEnum.Tools:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardMonitoringTabContainerPage:
        return DashboardMonitoringTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
