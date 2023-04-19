import 'package:flutter/cupertino.dart';
import 'package:travel_app/constants/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String? text;
  final Color? color;
  double? size;
  ResponsiveButton({
    Key? key,
    this.text='',
    this.color,
    this.size = 18,
    this.width = 120,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(left: 0,right: 0),
        width: isResponsive! ? width : double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.5),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isResponsive!
                ? Container()
                : Text(
                    text!,
                    style: TextStyle(color: color, fontSize: size),
                  ),
            Center(
              child: Image.asset('Assets/Images/button-one.png'),
            ),
          ],
        ),
      ),
    );
  }
}
