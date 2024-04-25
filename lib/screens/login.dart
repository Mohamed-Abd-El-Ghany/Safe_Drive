import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_images.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_button.dart';
import 'package:safedrive/presenation/components/custom_text_field.dart';
import 'package:safedrive/presenation/components/custom_bottom_nav_bar.dart';
import 'package:safedrive/screens/sign_up_screen.dart';

import '../presenation/components/custom_modal_bottom_sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.latte1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.latte1,
        centerTitle: true,
        title: const Text(
          AppText.safe,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          //image
          Container(
            width: double.infinity.w,
            height: double.infinity.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.busPic,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    //Email TextFormField
                    Padding(
                      padding:
                          EdgeInsets.only(top: 85.h, right: 25.w, left: 25.w),
                      child: CustomTextField(
                        type: TextInputType.emailAddress,
                        hintText: AppText.email,
                        prefixIcon: Icon(Icons.email,
                            color: AppColors.teel, size: 24.h),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    //Password TextFormField
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: CustomTextField(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        isVisible: isObscureText,
                        type: TextInputType.visiblePassword,
                        hintText: AppText.password,
                        prefixIcon:
                            Icon(Icons.lock, color: AppColors.teel, size: 24.h),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? CupertinoIcons.eye_slash_fill
                                : CupertinoIcons.eye_fill,
                            color: AppColors.teel,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //forget password
                const CustomBottomSheet(),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  navScreen: const BottomNavBar(),
                  selectText: AppText.login,
                  height: 60.h,
                  width: 80.w,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.w,
                        color: AppColors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 140.h, horizontal: 10.w),
                      child: const Text(
                        AppText.or,
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.w,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppText.doNotHaveAcc,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.w,
                        ),
                      ),
                      CustomButton(
                        navScreen: const SignUpScreen(),
                        selectText: AppText.signUp,
                        width: 70.w,
                        height: 50.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
