import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_boking/const/appcolors.dart';

Widget FooterButton(onAction, Color textColor, Color bgColor, String name) {
  return GestureDetector(
    onTap: onAction,
    child: Container(
      height: 65.h,
      padding: EdgeInsets.symmetric(
        horizontal: 50.h,
      ),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(color: AppColors.CornflowerBlueColor, width: 1.w)),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              fontSize: 20.sp, fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    ),
  );
}
