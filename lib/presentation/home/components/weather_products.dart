import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../constants/app_texstyle/app_textstyle_const.dart';
import '../../../constants/color/color_const.dart';
import '../../../constants/images/app_images.dart';

class WeatherProduct extends StatelessWidget {
  const WeatherProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          color: AppColor.bottomBarColor.withOpacity(0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              color: AppColor.bottomBarColor.withOpacity(0.8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                4.height,
                Text(
                  "12 AM",
                  style: AppTextStyle.s15W400.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                12.height,
                SizedBox(
                    height: 40, width: 40, child: Image.asset(AppImages.cloud)),
                16.height,
                Text(
                  "19 °",
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
