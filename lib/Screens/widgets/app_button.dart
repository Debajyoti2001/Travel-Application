import 'package:flutter/cupertino.dart';
import 'package:travel_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.color,
    required this.size,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor),
        child: Center(
          child: isIcon == false
              ? Text(
                  text!,
                  style: TextStyle(color: color),
                )
              : Icon(
                  icon,
                  color: color,
                ),
        ));
  }
}
