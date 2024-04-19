import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../constants/app_texstyle/app_textstyle_const.dart';
import '../../../constants/color/color_const.dart';

class WeatherProduct extends StatelessWidget {
  const WeatherProduct(
      {super.key,
      required this.day,
      required this.temp,
      required this.isToday,
      required this.main});
  final String day;
  final String temp;
  final bool isToday;
  final String main;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 190,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          color: AppColor.white.withOpacity(0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 190,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              color: isToday ? AppColor.kPrimaryColor : AppColor.bottomBarColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                4.height,
                Text(
                  day,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s15W400.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                12.height,
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(
                    locator<MainRepository>().getWeatherIcon(main),
                    color: AppColor.white,
                  ),
                ),
                16.height,
                Text(
                  "$temp °",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s15W400.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
