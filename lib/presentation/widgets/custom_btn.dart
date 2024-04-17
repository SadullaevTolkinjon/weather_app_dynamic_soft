import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/app_texstyle/app_textstyle_const.dart';

class Custombtn extends StatelessWidget {
  const Custombtn({
    super.key,
    required this.ontap,
    this.height = 50.0,
    this.width = 200.0,
    this.radius = 50.0,
    this.color = Colors.white,
    required this.title,
    this.titleColor = Colors.black,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
  });
  final Function ontap;
  final double height;
  final double width;
  final double radius;
  final Color color;
  final String title;
  final Color titleColor;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
            color: color),
        alignment: Alignment.center,
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s16.copyWith(
            color: titleColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
