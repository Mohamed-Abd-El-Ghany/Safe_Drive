import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_button2.dart';
import '../presenation/components/custom_elevated_button.dart';
import '../presenation/components/custom_otp_boxs.dart';
import 'congrats_screen.dart';

final _firebase = FirebaseAuth.instance;

class VerificationScreen extends StatefulWidget {
  final String? email;
  final String? password;
  final String? phone;
  const VerificationScreen({
    super.key,
    required String this.email,
    required String this.password,
    required String this.phone,
  });

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  void _submit2() async {
    _isLoading = true;
    setState(() {});
    try {
      await signUser(widget.email!, widget.password!);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Authentication success.'),
        ),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (builder) => const CongratsScreen(),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? 'Authentication failed.'),
        ),
      );
    }
    _isLoading = false;
    setState(() {});
  }

  Future<void> signUser(String email , String passward) async {
    final UserCredential userCredential =
        await _firebase.createUserWithEmailAndPassword(
      email: email,
      password: passward,
    );
  }

  bool _isLoading = false;
  bool isvalidOtp = false;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      child: Scaffold(
        backgroundColor: AppColors.latte1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.teel,
          title: const Text(
            AppText.verificationCode,
            style: TextStyle(color: AppColors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 40.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AppImages.verify,
                  height: 200.h,
                  width: MediaQuery.of(context).size.width.w,
                  fit: BoxFit.contain,
                ),
                Container(
                  margin: EdgeInsets.only(top: 73.h),
                  child: const Text(
                    AppText.otpHasSent,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myInputBox(context, txt1),
                      myInputBox(context, txt2),
                      myInputBox(context, txt3),
                      myInputBox(context, txt4),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  isvalidOtp ? 'Invalid otp!' : '',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.h),
                  child: const Text(
                    AppText.resendInSec,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: AppColors.grey1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75.h),
                  child: CustomElevatedButton(
                    text: AppText.verify,
                    onPressed: () {
                      final otp = txt1.text + txt2.text + txt3.text + txt4.text;
                      if (otp == '1989') {
                        setState(() {
                          isvalidOtp = false;
                        });
                        _submit2();
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (builder) => const CongratsScreen(),
                        //   ),
                        //   (route) => false,
                        // );
                      }
                      // else {
                      //   setState(() {
                      //     isvalidOtp = true;
                      //   });
                      // }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    width: 53.w,
    height: 53.h,
    margin: EdgeInsets.symmetric(horizontal: 8.w),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey1,
          blurRadius: .2, // soften the shadow
          spreadRadius: .2, //extend the shadow
          offset: Offset(
            0.5, // Move to right 5  horizontally
            0.5, // Move to bottom 5 Vertically
          ),
        )
      ],
      color: AppColors.kOtpColor,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
