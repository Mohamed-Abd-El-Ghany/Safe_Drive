import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';

class CustomSettingContainer2 extends StatelessWidget {
  const CustomSettingContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
            padding: const EdgeInsets.all(6),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.question_circle,
                  size: 26.w,
                ),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  AppText.help,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.doc_text_search,
                  size: 25.w,
                ),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  AppText.terms,
                  style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.exclamationmark_circle,
                  size: 25.w,
                ),
                SizedBox(width: 95.w),
                Text(
                  AppText.about,
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
