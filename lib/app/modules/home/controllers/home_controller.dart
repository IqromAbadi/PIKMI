import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image/image.dart' as img;

class HomeController extends GetxController {
  CameraController? cameraController;
  List<CameraDescription>? cameras;
  Rx<XFile?> capturedImage = Rx<XFile?>(null);
  RxBool isCameraInitialized = false.obs;

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    final frontCamera = cameras!.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
    );

    cameraController = CameraController(
      frontCamera,
      ResolutionPreset.medium, // Pilih preset resolusi rendah untuk cepat
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    try {
      await cameraController!.initialize();
      isCameraInitialized.value = true; // Update status inisialisasi kamera
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  Future<void> captureImage() async {
    if (cameraController != null && cameraController!.value.isInitialized) {
      try {
        final image = await cameraController!.takePicture();
        final originalImage =
            img.decodeImage(await File(image.path).readAsBytes());
        final flippedImage = img.flipHorizontal(originalImage!);
        final newPath = '${image.path}_flipped.jpg';
        await File(newPath).writeAsBytes(img.encodeJpg(flippedImage));

        capturedImage.value = XFile(newPath);
      } catch (e) {
        print('Error capturing image: $e');
      }
    }
  }

  void resetImage() {
    capturedImage.value = null;
  }

  @override
  void onClose() {
    cameraController?.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    initializeCamera();
  }
}
