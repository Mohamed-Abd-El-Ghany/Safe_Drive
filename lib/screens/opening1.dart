import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/screens/opening2.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int currentIndex = 0;

  List imgList = [
    AppImages.pic3,
    AppImages.pic4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: const AssetImage(AppImages.pic2),
              fit: BoxFit.fill,
              width: double.infinity.w,
            ),
            SizedBox(height: 120.h),
            CarouselSlider(
              options: CarouselOptions(
                  height: 260.h,
                  initialPage: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: imgList.map((imageUrl) {
                return Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Image.asset(imageUrl, fit: BoxFit.fill),
                );
              }).toList(),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(1),
                buildContainer(0),
              ],
            ),
            SizedBox(height: 70.h),
            const Text(
              AppText.let,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppText.a,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              navScreen: const Screen2(),
              selectText: AppText.next,
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(index) {
    return Container(
      width: currentIndex == index ? 20.w : 10.w,
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: currentIndex == index ? AppColors.black : AppColors.grey,
      ),
    );
  }
}
