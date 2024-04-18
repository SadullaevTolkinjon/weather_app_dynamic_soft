import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/images/app_images.dart';
import 'package:weather_app_dynamic/presentation/home/components/forecasts_bottomshet.dart';
import 'package:weather_app_dynamic/presentation/home/components/house_image.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_title.dart';

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
        child: const SafeArea(
          bottom: false,
          child: Stack(
            children: [
              HouseImage(),
              WeatherTitle(),
              BottomSheetForecasts(),
            ],
          ),
        ),
      ),
    );
  }
}
