import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';

class CustomEmergencyContainer3 extends StatelessWidget {
  const CustomEmergencyContainer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await FlutterPhoneDirectCaller.callNumber('01287002189');
      },
      child: Container(
        height: 55.h,
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
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
                  Text(
                    AppText.call,
                    style: TextStyle(
                      fontSize: 15.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 110.w,
                  ),
                  Text(
                    AppText.call012,
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
      ),
    );
  }
}
