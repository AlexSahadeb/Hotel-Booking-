import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotel_boking/const/appcolors.dart';
import 'package:hotel_boking/const/appstrings.dart';
import 'package:hotel_boking/styles/text_styles.dart';
import 'package:hotel_boking/views/details/Maps/google_maps_service.dart';
import 'package:hotel_boking/views/details/component/footer_widget_button.dart';
import 'package:hotel_boking/widget/app_bar.dart';
import 'package:hotel_boking/widget/card_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: AppColors.CosmicLatteColors,
        appBar: appMethod(AppStrings.detailsName, Icons.arrow_back, () {
          Get.back();
        }),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image.asset(
                            "assets/img/home1.jpg",
                            height: 250.h,
                            width: 350.w,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child: Container(
                                height: 50.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        )),
                                    const Text(
                                      "3.5",
                                      style: TextStyle(
                                          color: AppColors.WhiteColor),
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(top: 30.h, bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              AppStrings.cardTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.DarkCharcoalColor,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(AppStrings.cardSubTitle,
                                style: TextStyle(
                                    color: AppColors.GrayColor, fontSize: 17)),
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "\$999 ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.CornflowerBlueColor),
                            children: [
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
                Container(
                  height: 75.h,
                  decoration: BoxDecoration(
                      color: AppColors.CosmicLatteColors2,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TabBar(
                        labelColor: Colors.black,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColors.WhiteColor,
                        ),
                        tabs: const [
                          Tab(
                            text: "Overview",
                          ),
                          Tab(
                            text: "Preview",
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 800.h,
                  child: TabBarView(children: [
                    Container(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            cardWidget(Icons.home, "Barthroom", "2"),
                            cardWidget(Icons.home, "Barthroom", "2"),
                            cardWidget(Icons.home, "Square FT", "450 Fit.")
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 58.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: Image.asset(
                                  "assets/img/Me.jpg",
                                  height: 50.h,
                                  width: 40.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Laura Kimono",
                                    style: bookingTitle,
                                  ),
                                  Text(
                                    "Owner",
                                    style: bookingTitle2,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Material(
                                    color: AppColors.CosmicLatteColors2,
                                    borderRadius: BorderRadius.circular(50.r),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message,
                                          color: AppColors.CornflowerBlueColor,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Material(
                                    color: AppColors.CosmicLatteColors2,
                                    borderRadius: BorderRadius.circular(50.r),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.call,
                                          color: AppColors.CornflowerBlueColor,
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 550.h,
                          child: const MapService(),
                        )
                      ],
                    )),
                    Container(
                      child: Image.asset(
                        "assets/img/home1.jpg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          height: 80.h,
          child: const FooterWidgetButton(),
        ),
      ),
    ));
  }
}
