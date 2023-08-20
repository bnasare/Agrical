import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/presentation/login_screen/login_screen.dart';
import 'package:agrical_ii/presentation/profile_screen/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OScreen extends StatelessWidget {
  const OScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 120, 147, 238),
                child: Icon(
                  Icons.person_2,
                  size: 40,
                  color: Color.fromARGB(255, 6, 35, 58),
                ),
              ),
              title: const Text(
                'User Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'Name, Email, Contact Info',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 150, 179, 152),
                child: Icon(
                  Icons.auto_graph_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 121, 87, 76),
                ),
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'Monitoring, Accomplished',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 150, 179, 152),
                child: Icon(
                  Icons.camera,
                  size: 40,
                  color: Color.fromARGB(255, 120, 66, 46),
                ),
              ),
              title: const Text(
                'Capture',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'Capture, Recapture',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.captureScreen);
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 174, 143, 132),
                child: Icon(
                  Icons.online_prediction_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: const Text(
                'Predictions',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'Spoil Time, Ripening Time...',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.predictionScreen);
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 56, 13, 131),
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Color.fromARGB(255, 255, 220, 174),
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'Theme, Security',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(255, 109, 108, 108),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset(
                    'assets/images/img_question.svg',
                  ),
                ),
              ),
              title: const Text(
                'Help & Support',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: const Text(
                'IT Support, FAQs',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              onTap: () {},
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: appTheme.gray90001,
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.hScreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: SizedBox(
                      height: 45,
                      width: 45,
                      child: SvgPicture.asset(
                        'assets/images/img_home.svg',
                      ),
                    ),
                  )),
              ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color.fromARGB(255, 120, 147, 238),
                  child: Icon(
                    Icons.folder,
                    color: Color.fromARGB(255, 227, 212, 44),
                    size: 40,
                  ),
                ),
                title: const Text(
                  'Results',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 21, 70, 110),
                      fontSize: 25),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color.fromARGB(255, 120, 147, 238),
                  child: Icon(
                    Icons.folder,
                    color: Color.fromARGB(255, 227, 212, 44),
                    size: 40,
                  ),
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 21, 70, 110),
                      fontSize: 25),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.hScreen);
                },
                child: const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
