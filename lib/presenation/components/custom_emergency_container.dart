import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';

class CustomEmergencyContainer extends StatelessWidget {
  const CustomEmergencyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.latte1,
        border: Border.all(
          color: AppColors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.call1,
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  AppText.call112,
                  style: TextStyle(fontSize: 18.h, color: AppColors.grey),
                ),
              ],
            ),
            IconButton(
              color: AppColors.teel,
              onPressed: () async =>
                  await FlutterPhoneDirectCaller.callNumber('5000600000'),
              icon: Icon(
                CupertinoIcons.phone_fill,
                size: 30.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
