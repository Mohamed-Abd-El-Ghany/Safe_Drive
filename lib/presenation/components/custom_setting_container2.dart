import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';

class CustomSettingContainer2 extends StatelessWidget {
  const CustomSettingContainer2({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
    required this.thirdIcon,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    //required this.navScreen,
  });

  final IconData firstIcon;
  final IconData secondIcon;
  final IconData thirdIcon;
  final String firstText;
  final String secondText;
  final String thirdText;
  //final Widget? navScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.latte1,
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 6.h,
            ),
            child: Row(
              children: [
                Icon(
                  firstIcon,
                  size: 26.w,
                ),
                SizedBox(
                  width: 75.w,
                ),
                Text(
                  firstText,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            child: Row(
              children: [
                Icon(
                  secondIcon,
                  size: 25.w,
                ),
                SizedBox(width: 75.w),
                Text(
                  secondText,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
            child: Row(
              children: [
                Icon(
                  thirdIcon,
                  size: 25.w,
                ),
                SizedBox(
                  width: 75.w,
                ),
                Text(
                  thirdText,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
