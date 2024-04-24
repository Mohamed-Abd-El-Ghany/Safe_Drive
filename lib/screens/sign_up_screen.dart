import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_button.dart';
import 'package:safedrive/presenation/components/custom_text_field.dart';
import 'package:safedrive/screens/login.dart';
import 'package:safedrive/screens/verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.latte1,
        centerTitle: true,
        title: Text(
          AppText.safe,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24.w),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(
                  AppText.letsGetStart,
                  style: TextStyle(
                    fontSize: 20.w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              const CustomTextField(
                type: TextInputType.name,
                hintText: AppText.name,
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.teel,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomTextField(
                type: TextInputType.emailAddress,
                hintText: AppText.email,
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.teel,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomTextField(
                type: TextInputType.phone,
                hintText: AppText.phone,
                prefixIcon: Icon(
                  Icons.phone,
                  color: AppColors.teel,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                type: TextInputType.visiblePassword,
                hintText: AppText.password,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.teel,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(
                    isVisible
                        ? CupertinoIcons.eye_slash_fill
                        : CupertinoIcons.eye_fill,
                    color: AppColors.teel,
                  ),
                ),
                isVisible: isVisible,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                type: TextInputType.visiblePassword,
                hintText: AppText.confirmPassword,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.teel,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(
                    isVisible
                        ? CupertinoIcons.eye_slash_fill
                        : CupertinoIcons.eye_fill,
                    color: AppColors.teel,
                  ),
                ),
                isVisible: true,
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomButton(
                navScreen: const VerificationScreen(),
                selectText: AppText.create,
                width: 150.w,
                height: 50.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    AppText.alreadyHaveAcc,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.w,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        AppText.loginHere,
                        style: TextStyle(color: AppColors.teel, fontSize: 14.h),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
