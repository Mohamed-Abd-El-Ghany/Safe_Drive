import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationContainer extends StatelessWidget {
  const CustomNotificationContainer(
      {Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Container(
        width: 200.w,
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: color, width: 3.w),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.w),
        ),
      ),
    );
  }
}
