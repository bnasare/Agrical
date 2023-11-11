import 'dart:convert';
import 'dart:io';

import 'package:agrical_ii/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecaptureSaveScreen extends StatefulWidget {
  final File? selectedImage;

  const RecaptureSaveScreen({Key? key, this.selectedImage}) : super(key: key);

  @override
  State<RecaptureSaveScreen> createState() => _RecaptureSaveScreenState();
}

Future<dynamic> uploadImageAndProcessResponse(File selectedImage) async {
  try {
    var url = 'http://10.0.2.2:8000/predict/';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(
      await http.MultipartFile.fromPath('file', selectedImage.path),
    );

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseBody = await response.stream.bytesToString();
      var data = json.decode(responseBody);
      // Process the response data from the server (e.g., classification result)
      print('Classification Result: $data');
      return data['predicted_label'];
    } else {
      print('Error during image upload: ${response.reasonPhrase}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

int result = 1;

class _RecaptureSaveScreenState extends State<RecaptureSaveScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red10001,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: getPadding(
                    left: 10,
                    top: 7,
                    right: 10,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.fill,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 4, top: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                onTapImgCarbonclose(context);
                              },
                              child: const Icon(
                                Icons.close,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                File selectedImage = widget.selectedImage!;
                                final results =
                                    await uploadImageAndProcessResponse(
                                        selectedImage);
                                if (!mounted) return;
                                showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      alignment: Alignment.center,
                                      child: Text(results.toString()),
                                    ),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.forward,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(376),
                        width: getHorizontalSize(338),
                        margin: getMargin(top: 19),
                        decoration: BoxDecoration(
                          color: appTheme.green400Af,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(13),
                          ),
                        ),
                        child: widget.selectedImage != null
                            ? Image.file(
                                widget.selectedImage!,
                                fit: BoxFit.fill,
                              )
                            : const SizedBox(),
                      ),
                      Padding(
                        padding: getPadding(top: 15),
                        child: Text(
                          "Tap to recapture picture",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeOnErrorContainer,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(90),
                        width: getHorizontalSize(95),
                        margin: getMargin(top: 9),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: getVerticalSize(48),
                                width: getHorizontalSize(53),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(48),
                                        width: getHorizontalSize(53),
                                        decoration: BoxDecoration(
                                          color: appTheme.green900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(26),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCameraLightGreen50,
                                      height: getVerticalSize(22),
                                      width: getHorizontalSize(28),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgRefresh,
                              height: getVerticalSize(90),
                              width: getHorizontalSize(95),
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgRefresh(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(top: 11),
                  child: SizedBox(
                    width: getHorizontalSize(359),
                    child: Divider(
                      height: getVerticalSize(4),
                      thickness: getVerticalSize(4),
                      color: theme.colorScheme.secondaryContainer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hScreen.
  onTapImgCarbonclose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }

  /// Navigates to the captureScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the captureScreen.
  onTapImgRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.captureScreen);
  }
}
