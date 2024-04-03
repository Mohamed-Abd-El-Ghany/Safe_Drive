import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safedrive/screens/home_screen.dart';
import 'package:safedrive/screens/notification_screen.dart';
import 'package:safedrive/screens/profile_screen.dart';
import '../../app/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> screenOption = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  void changeItem(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenOption.elementAt(currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55.h,
        buttonBackgroundColor: AppColors.latte1,
        color: AppColors.teel,
        backgroundColor: AppColors.latte0,
        onTap: changeItem,
        items: [
          Icon(
            CupertinoIcons.home,
            color: currentIndex == 0 ? AppColors.teel : AppColors.latte1,
            size: 25.w,
          ),
          Icon(
            CupertinoIcons.bell,
            color: currentIndex == 1 ? AppColors.teel : AppColors.latte1,
            size: 25.w,
          ),
          Icon(
            Icons.account_circle,
            color: currentIndex == 2 ? AppColors.teel : AppColors.latte1,
            size: 25.w,
          ),
        ],
      ),
    );
  }
}
