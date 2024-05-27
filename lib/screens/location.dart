import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.location,
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
              Icons.location_on,
              color: AppColors.latte0,
              size: 40,
            ),
          )
        ],
      ),
      body: const Center(),
    );
  }
}
