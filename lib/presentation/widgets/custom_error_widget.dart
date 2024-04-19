import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/app_texstyle/app_textstyle_const.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.msg, required this.ontap});
  final String msg;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            msg,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle.s18.copyWith(
              color: AppColor.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          20.height,
          IconButton(
            onPressed: () {
              ontap();
            },
            icon: Icon(
              color: AppColor.white,
              size: 40,
              Icons.refresh,
            ),
          )
        ],
      ),
    );
  }
}
