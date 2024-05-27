import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_images.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_notification_container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teel,
        centerTitle: true,
        title: const Text(
          AppText.notifications,
          style: TextStyle(
            color: AppColors.latte0,
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_none,
              color: AppColors.latte0,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
            child: Row(
              children: [
                Container(
                  width: 110.w,
                  height: 165.h,
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppImages.pic4,
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      AppText.doYouKnowHim,
                      style: TextStyle(fontSize: 15),
                    ),
                    CustomNotificationContainer(
                      text: AppText.acceptForOnlyThisTime,
                      color: AppColors.blue,
                    ),
                    CustomNotificationContainer(
                      text: AppText.addNewUser,
                      color: AppColors.teel,
                    ),
                    CustomNotificationContainer(
                      text: AppText.reject,
                      color: AppColors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
              vertical: 16.h,
            ),
            child: const Divider(
              thickness: 2,
              color: AppColors.black,
            ),
          ),
          itemCount: 8,
        ),
      ),
    );
  }
}
