import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';

class CustomSettingContainer3 extends StatelessWidget {
  const CustomSettingContainer3({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.doc_text_fill,
                  size: 26.w,
                ),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  AppText.report,
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
                  CupertinoIcons.person_add_solid,
                  size: 25.w,
                ),
                SizedBox(width: 95.w),
                Text(
                  AppText.add1,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            child: Row(
              children: [
                Icon(
                  Icons.logout,
                  size: 25.w,
                ),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  AppText.log,
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
