import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../constants/app_texstyle/app_textstyle_const.dart';
import '../../constants/color/color_const.dart';

class AboutWeather extends StatelessWidget {
  const AboutWeather({super.key,required this.city,required this.maxTemp,required this.minTemp,required this.temp,required this.disc});
final String city;
final String temp;
final String maxTemp;
final String minTemp;
final String disc;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          city,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s24.copyWith(
            fontSize: 34,
            fontWeight: FontWeight.w600,
            color: AppColor.white,
          ),
        ),
        8.height,
        Text(
          "$temp°",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s24.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColor.white,
          ),
        ),
        Text(
          disc,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s24.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColor.kPrimiaryText,
          ),
        ),
        4.height,
        Text(
          "H:$maxTemp  L:$minTemp°",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s24.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
