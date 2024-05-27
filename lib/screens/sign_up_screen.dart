import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/app/app_colors.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/presenation/components/custom_text_email_field.dart';
import 'package:safedrive/presenation/components/custom_text_password_field.dart';
import 'package:safedrive/presenation/components/custom_text_phone_field.dart';
import 'package:safedrive/presenation/components/custom_text_user_field.dart';
import 'package:safedrive/screens/login.dart';
import 'package:safedrive/screens/verification_screen.dart';
import '../presenation/components/custom_elevated_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    // _isLoading = true;
    // setState(() {});
    if (!isValid) {
      return;
    }
    try {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (builder) => VerificationScreen(
            email: _emailc.text,
            password: _passwordc.text,
            phone: _phonec.text,
          ),
        ),
        (route) => false,
      );
    } catch (e) {}
    _formKey.currentState!.save();
  }


  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredUserphone = '';
  var _enteredUsername = '';
  TextEditingController _emailc = TextEditingController();
  TextEditingController _passwordc = TextEditingController();
  TextEditingController _phonec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.latte1,
        centerTitle: true,
        title: const Text(
          AppText.safe,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: const Text(
                    AppText.letsGetStart,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                CustomTextUserField(
                  onChanged: (value) => _enteredUsername = value,
                  type: TextInputType.name,
                  hintText: AppText.name,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: AppColors.teel,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomTextEmailField(
                  controller: _emailc,
                  onChanged: (value) => _enteredEmail = value,
                  type: TextInputType.emailAddress,
                  hintText: AppText.email,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: AppColors.teel,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomTextPhoneField(
                  controller: _phonec,
                  onChanged: (value) => _enteredUserphone = value,
                  type: TextInputType.phone,
                  hintText: AppText.phone,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: AppColors.teel,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomTextPasswordField(
                  controller: _passwordc,
                  onChanged: (value) => _enteredPassword = value,
                  type: TextInputType.visiblePassword,
                  hintText: AppText.password,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.teel,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomTextPasswordField(
                  onChanged: (value) => _enteredPassword = value,
                  type: TextInputType.visiblePassword,
                  hintText: AppText.confirmPassword,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.teel,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomElevatedButton(
                  text: AppText.create,
                  onPressed: () {
                    _submit();
                  },
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      AppText.alreadyHaveAcc,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
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
                      child: const Text(
                        AppText.loginHere,
                        style: TextStyle(
                          color: AppColors.teel,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailc.dispose();
    _passwordc.dispose();
    _phonec.dispose();
    super.dispose();
  }
}
