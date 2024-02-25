import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';

class CustomHomeContainer extends StatelessWidget {
   const CustomHomeContainer({Key? key, required this.name, required this.icon}) : super(key: key);
final String name;
final Widget icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100.w,
      height: 130.h,
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
          color: AppColors.primaryColor,
          border: Border.all(color: AppColors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         icon,
          SizedBox(
            height: 15.h,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16.w),
          )
        ],
      ),
    );
  }
}
