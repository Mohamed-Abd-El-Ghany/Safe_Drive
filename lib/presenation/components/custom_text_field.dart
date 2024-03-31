import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final bool? isVisible;
  final TextInputType? type;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController? controller;

  const CustomTextField(
      {super.key,
      this.contentPadding,
      this.isVisible,
      required this.type,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: TextFormField(
        controller: controller,
        obscureText: isVisible ?? false,
        keyboardType: type ?? TextInputType.emailAddress,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.teel, width: 2.w),
          ),
          filled: true,
          fillColor: AppColors.latte0,
          prefixIcon: prefixIcon ,
          suffixIcon: suffixIcon,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
          labelText: hintText,
          hoverColor: AppColors.latte1,
          labelStyle: const TextStyle(color: AppColors.grey1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
