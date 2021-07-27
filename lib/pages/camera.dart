// import 'package:flutter/material.dart';
// // import 'package:permission_handler/permission_handler.dart';
// import 'package:camera/camera.dart';
//
//
// class Camera extends StatefulWidget {
//     final List<CameraDescription> cameras ;
//
//   Camera(this.cameras);
//
//   @override
//   _CameraState createState() => _CameraState();
// }
//
// class _CameraState extends State<Camera> {
//   late CameraController controller;
//
//   void initState() {
//     super.initState();
//     controller =
//     new CameraController(widget.cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     // controller ?.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return AspectRatio(
//       aspectRatio: controller.value.aspectRatio,
//       child: CameraPreview(controller),);
//   }
// }
