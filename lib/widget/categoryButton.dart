import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class categoryButton extends StatelessWidget {
  String name;
  Function onAction;
  Color color;
  categoryButton(
      {required this.name, required this.onAction, required this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAction(),
      child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.fromLTRB(0, 5, 12, 5),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(7.r)),
          child: Text(
            name,
          )),
    );
  }
}
