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
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                AppText.account,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CustomSettingContainer1(),
            ),
            SizedBox(height: 20.h),
            const Center(
              child: Text(
                AppText.support,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CustomSettingContainer2(),
            ),
            SizedBox(height: 20.h),
            const Center(
              child: Text(
                AppText.actions,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CustomSettingContainer3(),
            ),
          ],
        ),
      ),
    );
  }
}