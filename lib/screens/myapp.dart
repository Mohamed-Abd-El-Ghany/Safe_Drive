import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/data/cubit/emergency_item_cubit/emergency_item_cubit.dart';
import 'package:safedrive/screens/splash_screen.dart';
import 'package:safedrive/screens/splash_screen2.dart';
import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_bottom_nav_bar.dart';
import '../presenation/components/custom_button.dart';
import 'login.dart';
import 'opening1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => EmergencyItemCubit(),
              )
            ],
            child: MaterialApp(
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.teel),
                ),
                debugShowCheckedModeBanner: false,
                home: const BottomNavBar(),
              //StreamBuilder(
              //   stream: FirebaseAuth.instance.authStateChanges(),
              //   builder: ((context, snapshot) {
              //     if (snapshot.hasData == true) {
              //       return const Splash2();
              //     }
              //     if (snapshot.hasData == false) {
              //       return const Splash();
              //     }
              //     return const LoginScreen();
              //   }),
              // ),
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List imgList = [
    AppImages.pic3,
    AppImages.pic4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: const AssetImage(AppImages.pic2),
              fit: BoxFit.fill,
              width: double.infinity.w,
            ),
            SizedBox(height: 120.h),
            CarouselSlider(
              options: CarouselOptions(
                  height: 260.h,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: imgList.map((imageUrl) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Image.asset(imageUrl, fit: BoxFit.fill),
                );
              }).toList(),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(0),
                buildContainer(1),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            const Text(
              AppText.before,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Text(
              AppText.remember,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50.h),
            CustomButton(
              navScreen: const Screen1(),
              selectText: AppText.next,
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(index) {
    return Container(
      width: currentIndex == index ? 20.w : 10.w,
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: currentIndex == index ? AppColors.black : AppColors.grey,
      ),
    );
  }
}
