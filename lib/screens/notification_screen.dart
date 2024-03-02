import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_images.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_notification_container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teel,
        centerTitle: true,
        title: const Text(AppText.notifications),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 28.w,
          ),
          color: AppColors.latte1,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Icon(
              Icons.notifications_none,
              color: AppColors.latte1,
              size: 28.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
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
                      Column(
                        children: [
                          Text(
                            AppText.doYouKnowHim,
                            style: TextStyle(fontSize: 15.w),
                          ),
                          const CustomNotificationContainer(
                            text: AppText.acceptForOnlyThisTime,
                            color: AppColors.blue,
                          ),
                          const CustomNotificationContainer(
                            text: AppText.addNewUser,
                            color: AppColors.teel,
                          ),
                          const CustomNotificationContainer(
                              text: AppText.reject, color: Colors.red),
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
                  child: Divider(
                    thickness: 2.w,
                    color: AppColors.black,
                  ),
                ),
            itemCount: 8),
      ),
    );
  }
}
