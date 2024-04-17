import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/app_texstyle/app_textstyle_const.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/constants/images/app_images.dart';
import 'package:weather_app_dynamic/presentation/home/components/forecasts_bottomshet.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_products.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_title.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.background_image),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                bottom: 145,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 390,
                  child: Image.asset(AppImages.house),
                ),
              ),
              const WeatherTitle(),
             const BottomSheetForecasts()
            ],
          ),
        ),
      ),
    );
  }
}
