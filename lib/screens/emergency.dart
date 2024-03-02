import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';

class Emergency extends StatefulWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.emergency,
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
        backgroundColor: AppColors.teel,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              CupertinoIcons.phone_fill,
              color: AppColors.latte0,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                child: CircleAvatar(
                  radius: 100.r,
                  backgroundColor: AppColors.white,
                  child: const Icon(
                    CupertinoIcons.person_alt_circle,
                    size: 210,
                    color: AppColors.black,
                  ),
                ),
                onTap: () {},
              ),
            ),
            SizedBox(height: 20.h),
            const Text(
              AppText.there,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppText.wants,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
