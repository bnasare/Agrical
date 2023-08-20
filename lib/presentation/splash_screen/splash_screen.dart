// import 'package:agrical_ii/core/app_export.dart';
// import 'package:agrical_ii/presentation/welcome_screen/welcome_screen.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => WelcomeScreen(),
//         ),
//       );
//     });

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.gray50,
//         body: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(horizontal: 55),
//           child: CustomImageView(
//             imagePath: ImageConstant.imgLogos4removebgpreview,
//             height: getVerticalSize(90),
//             width: getHorizontalSize(180),
//             alignment: Alignment.center,
//             margin: getMargin(top: 180, bottom: 100),
//           ),
//         ),
//       ),
//     );
//   }
// }
