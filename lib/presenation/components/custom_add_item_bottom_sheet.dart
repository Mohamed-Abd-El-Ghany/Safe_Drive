import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 32.h),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.teel,
                    width: 2.w,
                  ),
                ),
                filled: true,
                fillColor: AppColors.white,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
                labelText: AppText.name,
                hoverColor: AppColors.latte1,
                labelStyle: const TextStyle(color: AppColors.grey1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.teel,
                    width: 2.w,
                  ),
                ),
                filled: true,
                fillColor: AppColors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
                labelText: AppText.phoneNumber,
                hoverColor: AppColors.latte1,
                labelStyle: const TextStyle(color: AppColors.grey1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  AppColors.teel,
                ),
                fixedSize: MaterialStatePropertyAll(
                  Size(200.w, 50.h),
                ),
              ),
              onPressed: () {},
              child:  Text(
                AppText.add,
                style: TextStyle(color: AppColors.white,fontSize: 16.w),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
