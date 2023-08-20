import 'package:agrical_ii/auth.dart';
import 'package:agrical_ii/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:agrical_ii/presentation/capture_screen/capture_screen.dart';
import 'package:agrical_ii/presentation/dashboard_monitoring_container_screen/dashboard_monitoring_container_screen.dart';
import 'package:agrical_ii/presentation/h_screen/h_screen.dart';
import 'package:agrical_ii/presentation/login_screen/login_screen.dart';
import 'package:agrical_ii/presentation/m_screen/m_screen.dart';
import 'package:agrical_ii/presentation/o_screen/o_screen.dart';
import 'package:agrical_ii/presentation/predict_fruits_screen/predict_fruits_screen.dart';
import 'package:agrical_ii/presentation/predict_ripe_screen/predict_ripe_screen.dart';
import 'package:agrical_ii/presentation/predict_spoil_screen/predict_spoil_screen.dart';
import 'package:agrical_ii/presentation/prediction_screen/prediction_screen.dart';
import 'package:agrical_ii/presentation/recapture_save_screen/recapture_save_screen.dart';
import 'package:agrical_ii/presentation/settings_one_screen/settings_one_screen.dart';
import 'package:agrical_ii/presentation/settings_screen/settings_screen.dart';
import 'package:agrical_ii/presentation/signup_screen/signup_screen.dart';
import 'package:agrical_ii/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String captureScreen = '/capture_screen';

  static const String authScreen = '/auth_screen';

  static const String cameraView = '/camera_view';

  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String hScreen = '/h_screen';

  static const String oScreen = '/o_screen';

  static const String mScreen = '/m_screen';

  static const String settingsScreen = '/settings_screen';

  static const String recaptureSaveScreen = '/recapture_save_screen';

  static const String predictionScreen = '/prediction_screen';

  static const String predictFruitsScreen = '/predict_fruits_screen';

  static const String predictRipeScreen = '/predict_ripe_screen';

  static const String predictSpoilScreen = '/predict_spoil_screen';

  static const String settingsOneScreen = '/settings_one_screen';

  static const String dashboardMonitoringPage = '/dashboard_monitoring_page';

  static const String dashboardMonitoringTabContainerPage =
      '/dashboard_monitoring_tab_container_page';

  static const String dashboardMonitoringContainerScreen =
      '/dashboard_monitoring_container_screen';

  static const String dashboardAccomplishedPage =
      '/dashboard_accomplished_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    authScreen: (context) => const AuthPage(),
    captureScreen: (context) => const CaptureScreen(),
    // splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => const WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => const SignupScreen(),
    hScreen: (context) => const HScreen(),
    oScreen: (context) => const OScreen(),
    mScreen: (context) => const MScreen(),
    settingsScreen: (context) => const SettingsScreen(),
    recaptureSaveScreen: (context) => const RecaptureSaveScreen(),
    predictionScreen: (context) => const PredictionScreen(),
    predictFruitsScreen: (context) => const PredictFruitsScreen(),
    predictRipeScreen: (context) => const PredictRipeScreen(),
    predictSpoilScreen: (context) => const PredictSpoilScreen(),
    settingsOneScreen: (context) => const SettingsOneScreen(),
    dashboardMonitoringContainerScreen: (context) =>
        DashboardMonitoringContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
