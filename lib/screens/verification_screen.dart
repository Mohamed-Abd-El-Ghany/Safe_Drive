import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
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
  void initState() {
    phoneAuth();
    startTimer();
    super.initState;
  }

  int counter = 180;

  late Timer _timer;
  String? verifId;

  void startTimer() {
    setState(() {
      counter = 120;
    });
    _timer =Timer.periodic(const Duration(seconds: 1),(timer){
      if(!mounted || counter == 0)
      {
        timer.cancel();
      }else {
        setState((){
          if (counter > 0){
            counter--;
          }
        });
      }
    });
  }

  void _submit2() async {
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

  Future<void> signUser(String email, String passward) async {
    final UserCredential userCredential =
        await _firebase.createUserWithEmailAndPassword(
      email: email,
      password: passward,
    );
  }

  bool _isLoading = false;
  bool correct = true;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();


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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myInputBox(context, txt1,correct),
                      myInputBox(context, txt2,correct),
                      myInputBox(context, txt3,correct),
                      myInputBox(context, txt4,correct),
                      myInputBox(context, txt5,correct),
                      myInputBox(context, txt6,correct),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  correct ? '' : 'Invalid otp!',
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.h),
                  child: Text(
                    '${AppText.resendInSec}$counter sec',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, color: AppColors.grey1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75.h),
                  child: CustomElevatedButton(
                    text: AppText.verify,
                    onPressed: () {
                      sentCode();
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

  @override
  void dispose() {
    txt1.dispose();
    txt2.dispose();
    txt3.dispose();
    txt4.dispose();
    txt5.dispose();
    txt6.dispose();
    _timer.cancel();
    super.dispose();
  }

  void phoneAuth() async {
    try {
      await _firebase.verifyPhoneNumber(
        phoneNumber: widget.phone!,
        timeout: const Duration(seconds: 120),
        verificationCompleted: (PhoneAuthCredential credential) {
          print('Verification completed: $credential');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Verification failed: ${e.message}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Verification failed: ${e.message}')),
          );
        },
        codeSent: (String verificationId, int? resendToken) async {
          print('Code sent to ${widget.phone}');
          verifId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print('Auto retrieval timeout for verificationId: $verificationId');
          verifId = verificationId;
        },
      );
    } catch (e) {
      print('An error occurred: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  sentCode() async {
    try {
      String smsCode = txt1.text + txt2.text + txt3.text + txt4.text + txt5.text + txt6.text;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verifId!,
        smsCode: smsCode,
      );
      await _firebase.signInWithCredential(credential) .then((value) {
        if (value.user != null) {
          setState(() {
            correct = true;
            _isLoading = true;
            _submit2();
          });
        }
      });
    } catch (ex) {
      setState(() {
        correct = false;
      });
    }
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller, bool correct) {
  return Container(
    width: 53.w,
    height: 53.h,
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.75.w,
      ),
      boxShadow: [
        BoxShadow(
          color: correct ? AppColors.grey1 : AppColors.red,
          blurRadius: .2, // soften the shadow
          spreadRadius: .2, //extend the shadow
          offset: const Offset(
            0.5, // Move to right 5  horizontally
            0.5, // Move to bottom 5 Vertically
          ),
        )
      ],
      color: AppColors.kOtpColor,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: TextField(
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        border: InputBorder.none,
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        } else if (value.isEmpty){
          FocusScope.of(context).previousFocus();
        }
      },
    ),
  );
}
