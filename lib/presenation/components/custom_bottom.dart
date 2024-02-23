import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';

class CustomButton extends StatefulWidget {
  Widget navScreen;
  String selectText;
  CustomButton({super.key,required this.navScreen,required this.selectText});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
          height: 48.h,
          width: 267.w,
          decoration: BoxDecoration(
            color: AppColors.teel,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 67.w, vertical: 12.h),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                widget.selectText,
                style: const TextStyle(
                    color: AppColors.white,fontSize: 16 ,fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>widget.navScreen ));
        },
      ),
    );
  }
}
