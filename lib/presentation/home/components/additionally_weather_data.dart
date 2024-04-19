import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_dynamic/presentation/home/components/forecasts_bottomshet.dart';
import 'package:weather_app_dynamic/presentation/home/components/little_blured_cont.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';
import '../../../di/injection.dart';
import '../../../domain/repository/main_repository.dart';

class AdditionallyWidgets extends StatelessWidget {
  const AdditionallyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildable<HomeCubit, HomeState, HomeBuildableState>(
      properties: (buildable) => [
        buildable.success,
        buildable.data,
        buildable.weeklyWeather,
      ],
      builder: (context, state) {
        if (state.success) {
          var hourAndMinute = locator<MainRepository>()
              .getHourAndMinuteFromUnixTimestamp(state.data!.sys!.sunrise!);
          var sunset = locator<MainRepository>()
              .getHourAndMinuteFromUnixTimestamp(state.data!.sys!.sunset!);
          return Column(
            children: [
              BottomSheetForecasts(
                title: "Hourly Forecast",
                weeklyWeather: state.weeklyWeather!,
              ),
              40.height,
              BottomSheetForecasts(
                title: "Weekly Forecast",
                weeklyWeather: state.weeklyWeather!,
              ),
              40.height,
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 12,
                spacing: 12,
                children: [
                  LittleBluredContainer(
                    title: "Wind",
                    subtitle: "${state.data!.wind!.speed.toString()} km/h",
                  ),
                  LittleBluredContainer(
                    title: "Pressure",
                    subtitle: "${state.data!.main!.pressure.toString()} gpa",
                  ),
                  LittleBluredContainer(
                    title: "Humidity",
                    subtitle: "${state.data!.main!.humidity.toString()} %",
                  ),
                  LittleBluredContainer(
                    title: "Sunset",
                    subtitle: "${hourAndMinute.hour}:${hourAndMinute.minute}",
                  ),
                  LittleBluredContainer(
                    title: "Sunrise",
                    subtitle: "${sunset.hour}:${sunset.minute}",
                  ),
                ],
              ),
              24.height
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
