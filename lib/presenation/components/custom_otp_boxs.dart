import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../app/app_colors.dart';

class CustomOtpBox extends StatelessWidget {
  CustomOtpBox({super.key});

  final defaultPinTheme = PinTheme(
    width: 53.w,
    height: 53.h,
    margin: EdgeInsets.symmetric(horizontal: 8.w),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey1,
          blurRadius: .2, // soften the shadow
          spreadRadius: .2, //extend the shadow
          offset: Offset(
            0.5, // Move to right 5  horizontally
            0.5, // Move to bottom 5 Vertically
          ),
        )
      ],
      color: AppColors.kOtpColor,
      borderRadius: BorderRadius.circular(15.r),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          border: Border.all(color: AppColors.teel),
        ),
      ),
      onCompleted: (pin) => debugPrint(pin),
    );
  }
}
