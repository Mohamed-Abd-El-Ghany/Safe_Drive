import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/screens/reset_password_bottom_sheet.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_elevated_button.dart';
import '../presenation/components/custom_otp_boxs.dart';

class EmailVerificationBottomSheet extends StatelessWidget {
  const EmailVerificationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      width: MediaQuery.of(context).size.width.w,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 40.h,
                bottom: 15.h,
              ),
              child: const Text(
                AppText.enterFourDigit,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: CustomOtpBox(),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h),
              child: const Text(
                AppText.resendInSec,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height.h,
                      ),
                      backgroundColor: AppColors.latte1,
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(70.r))),
                      builder: (context) {
                        return const ResetPasswordBottomSheet();
                      });
                },
                text: AppText.kContinue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
