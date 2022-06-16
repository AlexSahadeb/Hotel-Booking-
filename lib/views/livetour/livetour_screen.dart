import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotel_boking/const/appcolors.dart';
import 'package:hotel_boking/const/appstrings.dart';
import 'package:hotel_boking/widget/app_bar.dart';

class LiveTourScreen extends StatelessWidget {
  const LiveTourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CosmicLatteColors,
      appBar: appMethod(AppStrings.livetourName, Icons.arrow_back, () {
        Get.back();
      }),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r)),
                  child: Image.asset(
                    "assets/img/home1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Container(
                margin: EdgeInsets.only(top: 30.h, bottom: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: AppColors.CosmicLatteColors2),
                      child: Center(
                        child: Icon(
                          Icons.card_membership,
                          size: 25.sp,
                          color: AppColors.CornflowerBlueColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("You are currently in the",
                            style: TextStyle(
                                color: AppColors.GrayColor, fontSize: 17)),
                        SizedBox(
                          height: 7,
                        ),
                        Text("Bedroom",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.DarkCharcoalColor,
                                fontSize: 20)),
                      ],
                    ),
                    Container(
                      width: 80.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                          color: AppColors.WhiteColor,
                          borderRadius: BorderRadius.circular(50.r)),
                      child: Center(
                        child: Container(
                          width: 25.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.CornflowerBlueColor,
                                  width: 8.w),
                              borderRadius: BorderRadius.circular(50.r)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
