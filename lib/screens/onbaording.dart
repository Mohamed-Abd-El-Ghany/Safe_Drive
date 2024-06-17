import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_images.dart';

import '../app/app_colors.dart';
import '../app/app_texts.dart';
import 'login.dart';

class OnBaordingScreen extends StatelessWidget {
  const OnBaordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      body: Center(
        child: Stack(
          children: [
            PageView(
              children: const [
                OnBoardingPage(
                  image: AppImages.pic3,
                  title: AppText.before,
                ),
                OnBoardingPage(
                  image: AppImages.pic4,
                  title: AppText.let,
                ),
                OnBoardingPage2(
                  image: AppImages.pic5,
                  title: AppText.safe,
                  subtitle: AppText.your,
                ),
              ],
            ),


            const OnBoardingSkip(),


          ],
        ),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      right: 12,
      child: TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (builder) => const LoginScreen(),
            ),
                (route) => false,
          );
        },
        child: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.black
          ),
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(AppImages.pic2),
          fit: BoxFit.fill,
          width: double.infinity.w,
        ),
        SizedBox(height: 90.h),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.fill,
            width: 300,
            height: 320,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(AppImages.pic2),
          fit: BoxFit.fill,
          width: double.infinity.w,
        ),
        Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
          width: 400.w,
          height: 428.h,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
