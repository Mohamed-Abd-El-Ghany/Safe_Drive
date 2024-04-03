import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';

class CustomEmergencyTextField extends StatelessWidget {
  const CustomEmergencyTextField({
    super.key,
    this.keyboardType,
    required this.label,
    this.onSaved,
  });

  final TextInputType? keyboardType;
  final String label;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      keyboardType: keyboardType ?? TextInputType.name,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.teel,
            width: 2.w,
          ),
        ),
        filled: true,
        fillColor: AppColors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
        labelText: label,
        hoverColor: AppColors.latte1,
        labelStyle: const TextStyle(color: AppColors.grey1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
