import 'package:get/get.dart';
import 'package:hotel_boking/nav/Tv/live_screen.dart';
import 'package:hotel_boking/nav/navigaton_screen.dart';
import 'package:hotel_boking/nav/notification/notification_screen.dart';
import 'package:hotel_boking/views/details/details_screen.dart';
import 'package:hotel_boking/views/home/home_screen.dart';
import 'package:hotel_boking/views/livetour/livetour_screen.dart';

const String navscreen = "/navigation_screen";
const String home = "/home_screen";
const String details = "/details_screen";
const String livetour = "/livetour_screen";
const String notifications = "/live_screen";
const String live = "/tv_screen";

List<GetPage> getPages = [
  GetPage(name: navscreen, page: () => NavigationBarScreen()),
  GetPage(name: home, page: () => HomeScreen()),
  GetPage(name: details, page: () => const DetailsScreen()),
  GetPage(name: livetour, page: () => const LiveTourScreen()),
  GetPage(name: notifications, page: () => const NotificationScreen()),
  GetPage(name: live, page: () => const LiveScreen())
];
