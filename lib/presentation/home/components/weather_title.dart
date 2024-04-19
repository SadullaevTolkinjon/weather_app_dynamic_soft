import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/presentation/widgets/about_weather.dart';
import 'package:weather_app_dynamic/presentation/widgets/custom_error_widget.dart';
import 'package:weather_app_dynamic/presentation/widgets/loader.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';

class WeatherTitle extends StatelessWidget {
  const WeatherTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [
          buildable.loading,
          buildable.failed,
          buildable.data,
          buildable.success,
          buildable.error,
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failed) {
            return CustomErrorWidget(
              msg: state.error,
              ontap: () async {
                await BlocProvider.of<HomeCubit>(context).fetchCurrentWeather();
              },
            );
          }
          return AboutWeather(
            city: "${state.data!.name}",
            maxTemp: "${state.data!.main!.temp_max}",
            minTemp: "${state.data!.main!.temp_min}",
            temp: "${state.data!.main!.temp}",
            disc: "${state.data!.weather!.first.description}",
          );
        },
      ),
    );
  }
}
