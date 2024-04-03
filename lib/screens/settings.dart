import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
import '../presenation/components/custom_setting_container.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              child: const CustomSettingContainer(
                firstIcon: Icons.person,
                firstText: AppText.editProfile,
                secondIcon: Icons.security,
                secondText: AppText.security,
                thirdIcon: CupertinoIcons.bell,
                thirdText: AppText.notification,
              ),
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
              child: const CustomSettingContainer(
                firstIcon: CupertinoIcons.question_circle,
                firstText: AppText.help,
                secondIcon: CupertinoIcons.doc_text_search,
                secondText: AppText.terms,
                thirdIcon: CupertinoIcons.exclamationmark_circle,
                thirdText: AppText.about,
              ),
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
              child: const CustomSettingContainer(
                firstIcon: CupertinoIcons.doc_text_fill,
                firstText: AppText.report,
                secondIcon: CupertinoIcons.person_add_solid,
                secondText: AppText.add,
                thirdIcon: Icons.logout,
                thirdText: AppText.log,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
