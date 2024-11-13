import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pikmi/app/data/colors.dart';
import 'package:pikmi/app/modules/registration/views/registration_view.dart';
import 'package:pikmi/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                'Log in',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 22.h),
              RichText(
                text: TextSpan(
                  text: 'Jika anda belum memiliki akun\n',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Silahkan mendaftar disini ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Daftar!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => const RegistrationView());
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
              SizedBox(height: 17.h),
              Row(
                children: [
                  Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (bool? value) {
                          controller.rememberMe.value = value!;
                        },
                      )),
                  Text(
                    "Ingat saya",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Lupa password?",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 53.h),
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 63.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Atau lanjutkan dengan",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 63),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/Facebook.svg",
                      width: 35.w,
                      height: 35.w,
                    ),
                  ),
                  SizedBox(width: 17.w),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/apple.svg",
                      width: 35.w,
                      height: 35.w,
                    ),
                  ),
                  SizedBox(width: 17.w),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/google.svg",
                      width: 35.w,
                      height: 35.w,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
