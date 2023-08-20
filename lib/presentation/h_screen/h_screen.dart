import 'package:agrical_ii/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HScreen extends StatefulWidget {
  const HScreen({Key? key}) : super(key: key);

  @override
  State<HScreen> createState() => _HScreenState();
}

class _HScreenState extends State<HScreen> {
  int _current = 0;
  final List<String> _pageTexts = [
    '"Agriculture not only gives riches to a nation, but the only riches she can call her own"',
    '"Agriculture is the backbone of our Economy"',
    '"The discovery of agriculture was the first big step toward a civilized life"',
  ];

  final List<String> _pageAuthors = [
    "Samuel Johnson",
    "Arlen Specter",
    "Arthur Keith",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red10001,
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Image.asset('assets/images/img_rectangle3.png'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Image.asset(
                            'assets/images/img_rectangle3_178x360.png'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child:
                            Image.asset('assets/images/img_rectangle3_1.png'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          width: _current == index ? 20 : 25,
                          height: _current == index ? 8 : 10,
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Colors.red
                                : const Color.fromARGB(255, 215, 212, 212),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.oScreen);
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        child: Image.asset('assets/images/img_ellipse4.png'),
                        radius: 30,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/img_fluentweather.svg',
                          ),
                          Text(
                            '12°C',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: appTheme.gray90001,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 5.0,
                          color: Colors.white.withOpacity(0.8),
                          width: MediaQuery.of(context).size.width * 0.3,
                          margin: const EdgeInsets.only(bottom: 10),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(50),
                            child: Text(
                              _pageTexts[_current],
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 5,
                          color: Colors.white.withOpacity(0.8),
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "${_pageAuthors[_current]}",
                          style: TextStyle(
                            fontFamily: 'Mrs Saint Delafield',
                            fontSize: 40,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.captureScreen);
                  },
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: appTheme.gray90001,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: appTheme.red10001,
                      size: 60,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
