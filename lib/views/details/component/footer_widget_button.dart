import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_boking/const/appcolors.dart';
import 'package:hotel_boking/route/routes.dart';
import 'package:hotel_boking/widget/footer_button.dart';

class FooterWidgetButton extends StatelessWidget {
  const FooterWidgetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterButton(() {
            Get.toNamed(livetour);
          }, AppColors.CornflowerBlueColor, AppColors.WhiteColor, "Live Tour"),
          FooterButton(() {}, AppColors.WhiteColor,
              AppColors.CornflowerBlueColor, "Live Tour")
        ],
      ),
    );
  }
}
