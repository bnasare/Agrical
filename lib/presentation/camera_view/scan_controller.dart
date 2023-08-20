// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

// class ObjectDetectionScreen extends StatefulWidget {
//   const ObjectDetectionScreen({super.key});

//   @override
//   _ObjectDetectionScreenState createState() => _ObjectDetectionScreenState();
// }

// class _ObjectDetectionScreenState extends State<ObjectDetectionScreen> {
//   late CameraController cameraController;
//   late List<CameraDescription> cameras;
//   late ObjectDetector objectDetector;
//   late final InputImage inputImage;

//   @override
//   void initState() {
//     super.initState();
//     initCamera();
//   }

//   Future<void> initCamera() async {
//     cameras = await availableCameras();
//     cameraController = CameraController(cameras[0], ResolutionPreset.max);

//     await cameraController.initialize();
//     setState(() {});

//     const classifyObjects =
//         true; // Set to true or false based on your requirement.

//     const multipleObjects =
//         true; // Set to true or false based on your requirement.

//     Future<String> getModelPath(String asset) async {
//       final path = '${(await getApplicationSupportDirectory()).path}/$asset';
//       await Directory(dirname(path)).create(recursive: true);
//       final file = File(path);
//       if (!await file.exists()) {
//         final byteData = await rootBundle.load(asset);
//         await file.writeAsBytes(byteData.buffer
//             .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//       }
//       return file.path;
//     }

//     final modelPath = await getModelPath('assets/models/fruit_model.tflite');
//     final options = LocalObjectDetectorOptions(
//       mode: DetectionMode.stream,
//       modelPath: modelPath,
//       classifyObjects: classifyObjects,
//       multipleObjects: multipleObjects,
//     );
//     objectDetector = ObjectDetector(options: options);

//     cameraController.startImageStream((CameraImage image) async {
//       List<DetectedObject> objects =
//           await objectDetector.processImage(inputImage);
//       for (DetectedObject detectedObject in objects) {
//         final rect = detectedObject.boundingBox;
//         final trackingId = detectedObject.trackingId;

//         for (Label label in detectedObject.labels) {
//           print('${label.text} ${label.confidence}');
//         }
//       }
//     });
//   }

//   Uint8List concatenatePlanes(List<Plane> planes) {
//     final WriteBuffer buffer = WriteBuffer();
//     for (Plane plane in planes) {
//       buffer.putUint8List(plane.bytes);
//     }
//     return buffer.done().buffer.asUint8List();
//   }

//   @override
//   void dispose() {
//     objectDetector.close();
//     cameraController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!cameraController.value.isInitialized) {
//       return Container();
//     }

//     return AspectRatio(
//       aspectRatio: cameraController.value.aspectRatio,
//       child: CameraPreview(cameraController),
//     );
//   }
// }
