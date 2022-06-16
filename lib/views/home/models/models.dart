import 'package:hotel_boking/const/appstrings.dart';

class Models {
  String img;
  String title;
  String subtitle;
  String price;
  Models(
      {required this.img,
      required this.title,
      required this.subtitle,
      required this.price});
}

List<Models> modelList = [
  Models(
      img: "assets/img/home1.jpg",
      title: AppStrings.cardTitle,
      subtitle: AppStrings.cardSubTitle,
      price: "\$999 "),
  Models(
      img: "assets/img/home2.jpg",
      title: AppStrings.cardTitle,
      subtitle: AppStrings.cardSubTitle,
      price: "\$555 "),
  Models(
      img: "assets/img/home3.jpg",
      title: AppStrings.cardTitle,
      subtitle: AppStrings.cardSubTitle,
      price: "\$666 "),
  Models(
      img: "assets/img/home4.jpg",
      title: AppStrings.cardTitle,
      subtitle: AppStrings.cardSubTitle,
      price: "\$888 "),
];
