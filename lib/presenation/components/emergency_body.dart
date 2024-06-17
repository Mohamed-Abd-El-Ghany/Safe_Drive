import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../../app/app_texts.dart';
import '../../data/cubit/emergency_item_cubit/emergency_item_cubit.dart';
import 'emergency_list_view.dart';

class EmergencyBody extends StatefulWidget {
  const EmergencyBody({super.key});

  @override
  State<EmergencyBody> createState() => _EmergencyBodyState();
}

class _EmergencyBodyState extends State<EmergencyBody> {
  @override
  void initState() {
    BlocProvider.of<EmergencyItemCubit>(context).fetchAllEmergencyItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100.r,
                backgroundColor: AppColors.white,
                child: const Icon(
                  CupertinoIcons.person_alt_circle,
                  size: 210,
                  color: AppColors.black,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            const Text(
              AppText.there,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              AppText.wants,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h),
            const EmergencyListView(),
          ],
        ),
      ),
    );
  }
}
