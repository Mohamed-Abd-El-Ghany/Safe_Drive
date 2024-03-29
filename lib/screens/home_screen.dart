import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/screens/emergency.dart';
import 'package:safedrive/screens/location.dart';
import 'package:safedrive/screens/settings.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_home_container.dart';
import 'face_id.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.latte0,
        centerTitle: true,
        title: Text(
          AppText.safe,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24.w),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomHomeContainer(
                name: AppText.setting,
                icon: Icon(
                  Icons.settings,
                  color: AppColors.teel,
                  size: 40.w,
                ),
                navScreen: const Settings(),
              ),
              SizedBox(
                width: 50.w,
              ),
              CustomHomeContainer(
                name: AppText.emergency,
                icon: Icon(
                  Icons.person,
                  color: AppColors.teel,
                  size: 40.w,
                ),
                navScreen: const Emergency(),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomHomeContainer(
                name: AppText.faceId,
                icon: Icon(
                  CupertinoIcons.camera_viewfinder,
                  color: AppColors.teel,
                  size: 40.w,
                ),
                navScreen: const FaceId(),
              ),
              SizedBox(
                width: 50.w,
              ),
              CustomHomeContainer(
                name: AppText.location,
                icon: Icon(
                  Icons.location_on,
                  color: AppColors.teel,
                  size: 40.w,
                ),
                navScreen: const Location(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}