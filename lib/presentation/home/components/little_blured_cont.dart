import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../constants/app_texstyle/app_textstyle_const.dart';
import '../../../constants/color/color_const.dart';

class LittleBluredContainer extends StatelessWidget {
  const LittleBluredContainer({
    super.key,
    required this.subtitle,
    required this.title,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        color: AppColor.kPrimaryColor2.withOpacity(0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyle.s16.copyWith(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            12.height,
            Text(
              subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyle.s16.copyWith(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
