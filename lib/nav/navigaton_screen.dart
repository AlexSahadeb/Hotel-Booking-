import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hotel_boking/const/appcolors.dart';
import 'package:hotel_boking/nav/Tv/live_screen.dart';
import 'package:hotel_boking/nav/notification/notification_screen.dart';
import 'package:hotel_boking/views/details/details_screen.dart';
import 'package:hotel_boking/views/home/home_screen.dart';
import 'package:hotel_boking/views/livetour/livetour_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  final items = [
    Icon(Icons.home),
    Icon(Icons.notifications),
    Icon(Icons.live_tv)
  ];

  final screens = [HomeScreen(), NotificationScreen(), LiveScreen()];

  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CosmicLatteColors,
      extendBody: true,
      body: screens[count],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: bottomNavigationKey,
        height: 60,
        index: count,
        items: items,
        onTap: (index) {
          setState(() {
            count = index;
          });
        },
      ),
    );
  }
}
