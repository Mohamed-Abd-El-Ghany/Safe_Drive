import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_images.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teel,
        centerTitle: true,
        title: const Text(
          AppText.profile,
          style: TextStyle(
            color: AppColors.latte0,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.account_circle,
              color: AppColors.latte0,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: Text(
              AppText.userProfile,
              style: TextStyle(
                fontSize: 16.w,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.latte0,
                      backgroundImage: const AssetImage(
                        AppImages.pic4,
                      ),
                      radius: 25.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      AppText.karlaPeter,
                      style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.phone_fill,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.phoneNumber,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.call012,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_city_rounded,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.address,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.california,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cake,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.birthDate,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.birthDateTime,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.age,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 88.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: Text(
              AppText.carInfo,
              style: TextStyle(
                fontSize: 16.w,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.w,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.drive_eta,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.carInsurance,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      // Text(
                      //   AppText.california,
                      //   style: TextStyle(
                      //     fontSize: 14.w,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card_rounded,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.driverLicense,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      // Text(
                      //   AppText.birthDateTime,
                      //   style: TextStyle(
                      //     fontSize: 14.w,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.precision_manufacturing,
                        color: AppColors.teel,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        AppText.manufacturer,
                        style: TextStyle(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
