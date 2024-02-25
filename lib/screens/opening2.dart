import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_button.dart';
import 'login.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: const AssetImage(AppImages.pic2),
              fit: BoxFit.fill,
              width: double.infinity.w,
            ),
            Image(
              image: const AssetImage(AppImages.pic5),
              fit: BoxFit.fill,
              width: 485.w,
              height: 428.h,
            ),
            SizedBox(height: 30.h),
            const Text(
              AppText.safe,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              AppText.your,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 70.h),
            CustomButton(
              navScreen: const LoginScreen(),
              selectText: AppText.let2,
            ),
          ],
        ),
      ),
    );
  }
}
