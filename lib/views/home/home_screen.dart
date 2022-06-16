import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotel_boking/const/appcolors.dart';
import 'package:hotel_boking/const/appstrings.dart';
import 'package:hotel_boking/route/routes.dart';
import 'package:hotel_boking/styles/text_styles.dart';
import 'package:hotel_boking/views/home/home_controller.dart';
import 'package:hotel_boking/views/home/models/models.dart';
import 'package:hotel_boking/widget/categoryButton.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.CosmicLatteColors,
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Container(
                    margin: EdgeInsets.only(top: 30.h, bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(AppStrings.authorName,
                                style: TextStyle(
                                    color: AppColors.GrayColor, fontSize: 17)),
                            Text(
                              AppStrings.authorAddress,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.DarkCharcoalColor,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                            width: 45.w,
                            height: 55.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image.asset(
                                "assets/img/Me.jpg",
                                fit: BoxFit.cover,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  child: const TextField(
                    decoration: InputDecoration(
                        fillColor: AppColors.WhiteColor,
                        filled: true,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.search,
                            color: AppColors.GrayColor,
                            size: 30,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.apps,
                            color: AppColors.GrayColor,
                            size: 30,
                          ),
                        ),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: AppStrings.searchName,
                        hintStyle: TextStyle(color: AppColors.GrayColor)),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.categoryName,
                      style: bookingTitle,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Obx(() => categoryButton(
                            name: homeController.buttonList[index].toString(),
                            onAction: () {
                              homeController.curentIndex.value == index;
                            },
                            color: homeController.curentIndex.value == index
                                ? AppColors.CornflowerBlueColor
                                : AppColors.WhiteColor));
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 2.w,
                        );
                      },
                      itemCount: homeController.buttonList.length),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.subTitleName,
                        style: bookingTitle,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          AppStrings.seeallName,
                          style: seeAllName,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 400.h,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: modelList.map((Models) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(details);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 390.h,
                              width: 250.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: AppColors.WhiteColor,
                              ),
                              child: Container(
                                height: 390.h,
                                width: 250.w,
                                margin: EdgeInsets.all(20.r),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: Image.asset(
                                              Models.img,
                                              height: 250.h,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Container(
                                                  height: 50.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white38,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Row(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          )),
                                                      const Text(
                                                        "3.5",
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .WhiteColor),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13.h,
                                    ),
                                    Text(
                                      Models.title,
                                      style: bookingTitle,
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Text(
                                      Models.subtitle,
                                      style: const TextStyle(
                                          color: AppColors.GrayColor),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: Models.price.toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                AppColors.CornflowerBlueColor),
                                        children: const [
                                          TextSpan(
                                              text: '/Month',
                                              style: TextStyle(
                                                  color: AppColors.GrayColor,
                                                  fontSize: 17)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
