import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/presentation/home/components/cutom_txt_btn.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_products.dart';
import 'package:weather_app_dynamic/presentation/widgets/blured_container.dart';

import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../domain/model/weekly_weather_model/weekly_weather_model.dart';

class BottomSheetForecasts extends StatelessWidget {
  const BottomSheetForecasts({
    super.key,
    required this.title,
    required this.weeklyWeather,
  });
  final String title;
  final WeeklyWeatherModel weeklyWeather;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BluredContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTxtBtn(
                    ontap: () {},
                    isSelected: true,
                    title: title,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    weeklyWeather.list!.length,
                    (index) => WeatherProduct(
                      isToday: locator<MainRepository>()
                                  .getWeekday(DateTime.now()) ==
                              locator<MainRepository>().getWeekday(
                                  DateTime.parse(weeklyWeather
                                      .list![index].dt_txt
                                      .toString()))
                          ? true
                          : false,
                      main: weeklyWeather.list![index].weather!.first.main!,
                      day:
                          locator<MainRepository>().getWeekdayAndTimeFromString(
                        weeklyWeather.list![index].dt_txt.toString(),
                      ),
                      temp: weeklyWeather.list![index].main!.temp!
                          .toInt()
                          .toString(),
                    ),
                  )
                ],
              ),
            ),
            12.height,
          ],
        ),
      ),
    );
  }
}
