import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Widget navScreen;
  String selectText;
  final double? height, width;

  CustomButton({
    super.key,
    required this.navScreen,
    required this.selectText,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => navScreen),
              (route) => false);
        },
        child: Container(
          height: height ?? 48.h,
          width: width ?? 267.w,
          decoration: BoxDecoration(
            color: AppColors.teel,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              selectText,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 15.w,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
