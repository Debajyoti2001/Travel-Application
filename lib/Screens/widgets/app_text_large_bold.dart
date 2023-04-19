import 'package:flutter/material.dart';

class AppTextLargeBold extends StatelessWidget {
  double size;
  final Color color;
  final String text;
  AppTextLargeBold({
    Key? key,
    this.size = 30,
    this.color = Colors.black,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}
