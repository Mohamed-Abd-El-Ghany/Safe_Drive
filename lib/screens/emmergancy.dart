import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/app_colors.dart';
import '../app/app_texts.dart';
import 'home_screen.dart';

class Emmergancy extends StatefulWidget {
  const Emmergancy({Key? key}) : super(key: key);

  @override
  State<Emmergancy> createState() => _EmmergancyState();
}

class _EmmergancyState extends State<Emmergancy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.latte0,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.emergency,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => const HomeScreen()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              CupertinoIcons.arrow_left,
              size: 30,
            ),
          ),
        ),
        backgroundColor: AppColors.teel,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              CupertinoIcons.phone_fill,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                child: CircleAvatar(
                  radius: 100.r,
                  backgroundColor: AppColors.white,
                  child: const Icon(
                    CupertinoIcons.person_alt_circle,
                    size: 210,
                    color: AppColors.black,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
