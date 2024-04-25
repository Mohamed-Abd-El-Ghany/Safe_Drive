import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_images.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_button.dart';
import 'package:safedrive/screens/login.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte1,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
            child: Center(
              child: Image.asset(
                AppImages.congrats,
                width: MediaQuery.of(context).size.width,
                height: 400.h,
              ),
            ),
          ),
          const Text(
            AppText.congratulation,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16.h,
          ),
          const Text(
            AppText.yourAccVerified,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          // Image.asset(
          //   AppImages.success,
          //   width: 70.w,
          // ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 54.h),
            child: CustomButton(
              navScreen: const LoginScreen(),
              selectText: AppText.done,
            ),
          )
        ],
      ),
    );
  }
}
