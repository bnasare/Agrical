import 'dart:io';
import 'dart:typed_data';

import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/presentation/recapture_save_screen/recapture_save_screen.dart';
import 'package:agrical_ii/widgets/app_bar/appbar_image.dart';
import 'package:agrical_ii/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

class CaptureScreen extends StatefulWidget {
  const CaptureScreen({Key? key}) : super(key: key);

  @override
  State<CaptureScreen> createState() => _CaptureScreenState();
}

class _CaptureScreenState extends State<CaptureScreen> {
  File? selectedImage;
  Future<void> _pickImageFromGallery() async {
    try {
      final returnedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (returnedImage != null) {
        setState(() {
          selectedImage = File(returnedImage.path);
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RecaptureSaveScreen(selectedImage: selectedImage),
          ),
        );
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  Future<void> _pickImageFromCamera() async {
    try {
      final returnedImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (returnedImage != null) {
        setState(() {
          selectedImage = File(returnedImage.path);
        });

        Uint8List? imageBytes = await selectedImage?.readAsBytes();

        await ImageGallerySaver.saveImage(imageBytes!);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RecaptureSaveScreen(selectedImage: selectedImage),
          ),
        );
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 51,
                leading: AppbarImage(
                    height: getVerticalSize(39),
                    width: getHorizontalSize(41),
                    svgPath: ImageConstant.imgCarbonclose,
                    margin: getMargin(left: 10, top: 4, bottom: 4),
                    onTap: () {
                      onTapCarbonclose(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(25),
                      svgPath: ImageConstant.imgVolume,
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      margin:
                          getMargin(left: 24, top: 18, right: 24, bottom: 9))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 5, right: 21, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 34, right: 3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(100),
                                    width: getHorizontalSize(77),
                                    margin: getMargin(bottom: 3),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                  height: getVerticalSize(100),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(77),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100)))
                                        ])),
                                Container(
                                    height: getVerticalSize(102),
                                    width: getHorizontalSize(79),
                                    margin: getMargin(top: 2),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                  height: getVerticalSize(100),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(77),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100)))
                                        ]))
                              ])),
                      Container(
                          width: getHorizontalSize(247),
                          margin: getMargin(left: 40, top: 32, right: 30),
                          child: Text(
                              "Make sure your image is in focus and well captured within the  boundary ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.titleSmallOnErrorContainer)),
                      Padding(
                          padding: getPadding(top: 65, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(100),
                                    width: getHorizontalSize(77),
                                    margin: getMargin(top: 2),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                  height: getVerticalSize(100),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(77),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100)))
                                        ])),
                                Container(
                                    height: getVerticalSize(101),
                                    width: getHorizontalSize(78),
                                    margin: getMargin(bottom: 1),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                  height: getVerticalSize(100),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(77),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: appTheme
                                                          .blueGray100)))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Tap here to capture picture",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.labelLargeOnErrorContainer))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(65),
                width: getHorizontalSize(68),
                margin: getMargin(left: 148, right: 144, bottom: 14),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getVerticalSize(65),
                          width: getHorizontalSize(68),
                          decoration: BoxDecoration(
                              color: appTheme.gray400,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(34))))),
                  CustomImageView(
                      svgPath: ImageConstant.imgCamera,
                      height: getVerticalSize(29),
                      width: getHorizontalSize(35),
                      alignment: Alignment.center,
                      onTap: () {
                        _pickImageFromCamera();
                      })
                ]))));
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the hScreen.
  onTapCarbonclose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }

  /// Navigates to the recaptureSaveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the recaptureSaveScreen.
  // onTapImgCamera(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => RecaptureSaveScreen(selectedImage: selectedImage),
  //     ),
  //   );
  // }
}
