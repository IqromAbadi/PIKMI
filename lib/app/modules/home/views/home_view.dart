import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pikmi/app/data/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 50.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hallo Pengguna",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Selamat datang di aplikasi Pikmi",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.h),
            Obx(() {
              return controller.isCameraInitialized.value
                  ? (controller.capturedImage.value != null
                      ? Image.file(
                          File(controller.capturedImage.value!.path),
                          fit: BoxFit.cover,
                        )
                      : CameraPreview(controller.cameraController!))
                  : Center(child: CircularProgressIndicator());
            }),
            SizedBox(height: 20.h),
            Center(
              child: Obx(() => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      minimumSize: Size(double.infinity, 53.h),
                    ),
                    onPressed: () {
                      if (controller.capturedImage.value == null) {
                        controller.captureImage();
                      } else {
                        print(
                            'Gambar akan dikirim: ${controller.capturedImage.value!.path}');
                      }
                    },
                    child: Text(
                      controller.capturedImage.value == null
                          ? "Scan Wajah"
                          : "Kirim",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
            ),
            SizedBox(height: 20.h),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(double.infinity, 53.h),
                ),
                onPressed: () {
                  controller.resetImage();
                },
                child: Text(
                  "Retake",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
