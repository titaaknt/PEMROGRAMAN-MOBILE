import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraSimple extends StatefulWidget {
  const CameraSimple({super.key});

  @override
  State<CameraSimple> createState() => _CameraSimpleState();
}

class _CameraSimpleState extends State<CameraSimple> {
  CameraController? controller;
  String? imagePath;

  @override
  void initState() {
    super.initState();
    initCam();
  }

  Future<void> initCam() async {
    final cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller!.initialize();
    setState(() {});
  }

  Future<void> takePhoto() async {
    final image = await controller!.takePicture();
    setState(() {
      imagePath = image.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Camera Basic")),
      body: Column(
        children: [
          Expanded(child: CameraPreview(controller!)),
          if (imagePath != null)
            Image.file(File(imagePath!), height: 120),
          ElevatedButton(
            onPressed: takePhoto,
            child: const Text("Ambil Foto"),
          ),
        ],
      ),
    );
  }
}