import 'package:flutter/material.dart';
import 'package:hotel_boking/const/appcolors.dart';

AppBar appMethod(String name, IconData icon, onBack) {
  return AppBar(
      title: Text(
        name,
        style: const TextStyle(color: AppColors.GrayColor),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
          onPressed: onBack,
          icon: Icon(
            icon,
            color: AppColors.GrayColor,
          )));
}
