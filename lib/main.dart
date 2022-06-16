import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotel_boking/const/appstrings.dart';
import 'package:hotel_boking/nav/navigaton_screen.dart';
import 'package:hotel_boking/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(375, 912),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: NavigationBarScreen(),
            initialRoute: "/navigation_screen",
            getPages: getPages,
          );
        });
  }
}
