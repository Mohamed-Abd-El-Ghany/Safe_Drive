import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_colors.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_elevated_button.dart';
import '../presenation/components/custom_text_form_field.dart';

class ResetPasswordBottomSheet extends StatefulWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  State<ResetPasswordBottomSheet> createState() =>
      _ResetPasswordBottomSheetState();
}

class _ResetPasswordBottomSheetState extends State<ResetPasswordBottomSheet> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
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
                AppText.setNewPassword,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormField(
                isVisible: isVisible,
                keyboardType: TextInputType.visiblePassword,
                label: AppText.password,
                suffix: GestureDetector(
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
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                isVisible: isVisible,
                keyboardType: TextInputType.visiblePassword,
                label: AppText.confirmPassword,
                suffix: GestureDetector(
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
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 35.h),
                child: CustomElevatedButton(
                  text: AppText.resetPassword,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
