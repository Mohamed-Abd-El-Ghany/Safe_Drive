import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_button.dart';
import '../presenation/components/custom_otp_boxs.dart';
import 'congrats_Screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teel,
        title: const Text(
          AppText.verificationCode,
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            Image.asset(
              AppImages.verify,
              height: 200.h,
              width: MediaQuery.of(context).size.width.w,
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.only(top: 73.h),
              child: const Text(
                AppText.otpHasSent,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: CustomOtpBox(),
            ),
            Container(
              margin: EdgeInsets.only(top: 18.h),
              child: const Text(
                AppText.resendInSec,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: AppColors.grey1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 75.h),
              child: CustomButton(
                navScreen: const CongratsScreen(),
                selectText: AppText.verify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
