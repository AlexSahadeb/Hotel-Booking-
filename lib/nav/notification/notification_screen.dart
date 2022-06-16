import 'package:flutter/material.dart';
import 'package:hotel_boking/const/appcolors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CosmicLatteColors,
      body: const Center(
        child: Text("Notification Screen"),
      ),
    );
  }
}
