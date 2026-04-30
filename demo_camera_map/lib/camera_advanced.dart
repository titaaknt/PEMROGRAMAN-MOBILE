import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraAdvanced extends StatefulWidget {
  const CameraAdvanced({super.key});

  @override
  State<CameraAdvanced> createState() => _CameraAdvancedState();
}

class _CameraAdvancedState extends State<CameraAdvanced> {
  CameraController? controller;
  List<CameraDescription>? cameras;
  int selectedCamera = 0;
  FlashMode flashMode = FlashMode.off;
  String? imagePath;

  @override
  void initState() {
    super.initState();
    initCam();
  }

  Future<void> initCam() async {
    cameras = await availableCameras();
    controller = CameraController(
      cameras![selectedCamera],
      ResolutionPreset.high,
    );
    await controller!.initialize();
    setState(() {});
  }

  Future<void> switchCamera() async {
    selectedCamera = selectedCamera == 0 ? 1 : 0;
    await controller?.dispose();
    await initCam();
  }

  Future<void> toggleFlash() async {
    flashMode =
        flashMode == FlashMode.off ? FlashMode.torch : FlashMode.off;
    await controller?.setFlashMode(flashMode);
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
      appBar: AppBar(title: const Text("Camera Advanced")),
      body: Stack(
        children: [
          CameraPreview(controller!),

          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              onPressed: toggleFlash,
              icon: Icon(
                flashMode == FlashMode.off
                    ? Icons.flash_off
                    : Icons.flash_on,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 30,
            child: FloatingActionButton(
              onPressed: switchCamera,
              child: const Icon(Icons.flip_camera_android),
            ),
          ),

          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              onPressed: takePhoto,
              child: const Icon(Icons.camera),
            ),
          ),

          if (imagePath != null)
            Positioned(
              bottom: 120,
              left: 20,
              child: Image.file(File(imagePath!), height: 80),
            ),
        ],
      ),
    );
  }
}