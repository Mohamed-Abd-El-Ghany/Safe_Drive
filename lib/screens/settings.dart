import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
import '../presenation/components/custom_setting_container.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teel,
        centerTitle: true,
        title: Text(
          AppText.settings,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20.w,
          ),
        ),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.latte1,
            size: 28.w,
          ),
        ),

        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Icon(
              Icons.settings,
              color: AppColors.latte1,
              size: 28.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.account,
              style: TextStyle(fontSize: 20.w),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: const CustomSettingContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
