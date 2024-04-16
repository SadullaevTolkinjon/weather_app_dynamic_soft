import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/app_texstyle/app_textstyle_const.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home app bar",
          style: AppTextStyle.s16.copyWith(
            color: ColorConstants.kPrimiaryText,
          ),
        ),
      ),
    );
  }
}
