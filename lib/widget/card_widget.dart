import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_boking/const/appcolors.dart';

Widget cardWidget(IconData icon, String name, String count) {
  return Container(
    height: 150.h,
    width: 100.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.r),
      color: AppColors.CosmicLatteColors2,
    ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: AppColors.GrayColor,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            name,
            style: TextStyle(color: AppColors.GrayColor),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            count,
            style: TextStyle(
                color: AppColors.DarkCharcoalColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
