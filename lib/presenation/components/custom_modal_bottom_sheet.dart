import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/presenation/components/custom_elevated_button.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';
import '../../screens/email_verification_bottom_sheet.dart';
import 'custom_text_form_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: TextButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              backgroundColor: AppColors.latte1,
              context: context,
              builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                        left: 8.w,
                        right: 8.w),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 28.h),
                            child: const Text(
                              textAlign: TextAlign.center,
                              AppText.forgetPassword,
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            AppText.enterYourEmail,
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          const CustomTextFormField(
                            label: AppText.email,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 35.h),
                            child: CustomElevatedButton(
                              text: AppText.submit,
                              onPressed: () {
                                Navigator.pop(context);
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    constraints: BoxConstraints(
                                        maxHeight:
                                            MediaQuery.of(context).size.height),
                                    backgroundColor: AppColors.latte1,
                                    context: context,
                                    builder: (context) {
                                      return const EmailVerificationBottomSheet();
                                    });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text(
            AppText.forgetPassword,
            style: TextStyle(
                color: AppColors.black,
                decoration: TextDecoration.underline,
                fontSize: 14.h),
          )),
    );
  }
}
