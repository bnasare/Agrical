import 'package:agrical_ii/core/app_export.dart';
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
              leading: CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.person_2,
                  size: 40,
                  color: Color.fromARGB(255, 6, 35, 58),
                ),
                backgroundColor: Color.fromARGB(255, 120, 147, 238),
              ),
              title: Text(
                'User Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
                'Name, Email, Contact Info',
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
                child: Icon(
                  Icons.folder,
                  color: Color.fromARGB(255, 227, 212, 44),
                  size: 40,
                ),
                backgroundColor: Color.fromARGB(255, 120, 147, 238),
              ),
              title: Text(
                'Results',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              // subtitle: Text('Subtitle 2'),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 150, 179, 152),
                child: Icon(
                  Icons.auto_graph_rounded,
                  size: 40,
                  color: const Color.fromARGB(255, 121, 87, 76),
                ),
              ),
              title: Text(
                'Dashboard',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
                'Monitoring, Accomplished',
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
                child: Icon(
                  Icons.camera,
                  size: 40,
                  color: Color.fromARGB(255, 120, 66, 46),
                ),
                backgroundColor: Color.fromARGB(255, 150, 179, 152),
              ),
              title: Text(
                'Capture',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
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
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 174, 143, 132),
                child: Icon(
                  Icons.online_prediction_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: Text(
                'Predictions',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
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
              leading: CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Color.fromARGB(255, 255, 220, 174),
                ),
                backgroundColor: Color.fromARGB(255, 56, 13, 131),
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
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
              title: Text(
                'Help & Support',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 21, 70, 110),
                    fontSize: 25),
              ),
              subtitle: Text(
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.hScreen);
                },
                child: Text(
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
