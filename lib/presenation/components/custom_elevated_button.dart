import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, this.onPressed, this.isLoading = false});

  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.teel,
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(200.w, 50.h),
        ),
      ),
      child: isLoading
          ? Center(
              child: SizedBox(
              width: 25.w,
              height: 26.h,
              child: const CircularProgressIndicator(
                color: AppColors.white,
              ),
            ))
          : Text(
              AppText.add,
              style: TextStyle(color: AppColors.white, fontSize: 16.w),
            ),
    );
  }
}
