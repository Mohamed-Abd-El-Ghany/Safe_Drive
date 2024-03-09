import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
import '../presenation/components/custom_setting_container1.dart';
import '../presenation/components/custom_setting_container2.dart';
import '../presenation/components/custom_setting_container3.dart';

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
            color: AppColors.latte0,
            fontSize: 20.w,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.latte0,
            size: 30.w,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
              color: AppColors.latte0,
              size: 30.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppText.account,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: const CustomSettingContainer1(),
            ),
            SizedBox(height: 20.h),
            const Text(
              AppText.support,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: const CustomSettingContainer2(),
            ),
            SizedBox(height: 20.h),
            const Text(
              AppText.actions,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: const CustomSettingContainer3(),
            ),
          ],
        ),
      ),
    );
  }
}
