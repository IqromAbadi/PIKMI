import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:pikmi/app/data/colors.dart';
import 'package:pikmi/app/modules/login/views/login_view.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 50.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daftar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 22.h),
              RichText(
                text: TextSpan(
                  text: 'Jika anda sudah memiliki akun silahkan\n',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'login disini ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Login!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => const LoginView());
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                "Email",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              TextField(
                cursorColor: const Color(0xffD9D9D9),
                style: const TextStyle(
                  color: Color(0xffD9D9D9),
                ),
                decoration: InputDecoration(
                  hintText: "Masukkan email anda",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(right: 12.w, top: 12.w, bottom: 12.w),
                    child: SvgPicture.asset("assets/icons/email.svg"),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                "Username",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              TextField(
                cursorColor: const Color(0xffD9D9D9),
                style: const TextStyle(
                  color: Color(0xffD9D9D9),
                ),
                decoration: InputDecoration(
                  hintText: "Masukkan username anda",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(right: 12.w, top: 12.w, bottom: 12.w),
                    child: SvgPicture.asset("assets/icons/user.svg"),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                "Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              TextField(
                cursorColor: const Color(0xffD9D9D9),
                style: const TextStyle(
                  color: Color(0xffD9D9D9),
                ),
                decoration: InputDecoration(
                  hintText: "Masukkan password anda",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(right: 12.w, top: 12.w, bottom: 12.w),
                    child: SvgPicture.asset("assets/icons/lock.svg"),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                "Confirm Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              TextField(
                cursorColor: const Color(0xffD9D9D9),
                style: const TextStyle(
                  color: Color(0xffD9D9D9),
                ),
                decoration: InputDecoration(
                  hintText: "Konfirmasi password anda",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(right: 12.w, top: 12.w, bottom: 12.w),
                    child: SvgPicture.asset("assets/icons/lock.svg"),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 53.h),
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: () {
                  Get.to(() => const LoginView());
                },
                child: Text(
                  "Daftar",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
