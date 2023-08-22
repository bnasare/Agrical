import 'package:agrical_ii/firebase_options.dart';
import 'package:agrical_ii/routes/app_routes.dart';
import 'package:agrical_ii/theme/theme_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Initialize Flutter services first
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'agrical_ii',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomeScreen,
      routes: AppRoutes.routes,
    );
  }
}
