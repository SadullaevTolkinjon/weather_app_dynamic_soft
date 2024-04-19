import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/domain/model/custom_city/local_cities.dart';
import 'package:weather_app_dynamic/presentation/search/cubit/search_cubit.dart';
import 'package:weather_app_dynamic/presentation/widgets/about_weather.dart';
import 'package:weather_app_dynamic/presentation/widgets/custom_error_widget.dart';
import 'package:weather_app_dynamic/presentation/widgets/loader.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../constants/images/app_images.dart';
import '../../../domain/repository/main_repository.dart';
import '../../home/components/little_blured_cont.dart';

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({super.key, required this.city});
  final CustomCityModel city;
  @override
  Widget build(BuildContext context) {
    return Container(
      //duration: const Duration(seconds: 2),
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.background_image),
        ),
      ),
      child: BlocProvider(
          create: (context) {
            var cubit = locator<SearchCubit>();
            cubit.fetch(city.location!.lat, city.location!.long);
            return cubit;
          },
          child: Buildable<SearchCubit, SearchState, SearchBuidable>(
            properties: (buildable) => [
              buildable.loading,
              buildable.failed,
              buildable.success,
              buildable.data,
            ],
            builder: (context, state) {
              if (state.loading) {
                return const LoaderWidget();
              }
              if (state.failed) {
                return CustomErrorWidget(
                  msg: state.error,
                  ontap: () {
                    context
                        .read<SearchCubit>()
                        .fetch(city.location!.lat, city.location!.long);
                  },
                );
              }
              var hourAndMinute = locator<MainRepository>()
                  .getHourAndMinuteFromUnixTimestamp(state.data!.sys!.sunrise!);
              var sunset = locator<MainRepository>()
                  .getHourAndMinuteFromUnixTimestamp(state.data!.sys!.sunset!);
              return  SingleChildScrollView(
                      child: Column(
                        children: [
                          24.height,
                          AboutWeather(
                            city: "${state.data!.name}",
                            maxTemp: "${state.data!.main!.temp_max}",
                            minTemp: "${state.data!.main!.temp_min}",
                            temp: "${state.data!.main!.temp}",
                            disc: "${state.data!.weather!.first.description}",
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
                                subtitle:
                                    "${state.data!.wind!.speed.toString()} km/h",
                              ),
                              LittleBluredContainer(
                                title: "Pressure",
                                subtitle:
                                    "${state.data!.main!.pressure.toString()} gpa",
                              ),
                              LittleBluredContainer(
                                title: "Humidity",
                                subtitle:
                                    "${state.data!.main!.humidity.toString()} %",
                              ),
                              LittleBluredContainer(
                                title: "Sunset",
                                subtitle:
                                    "${hourAndMinute.hour}:${hourAndMinute.minute}",
                              ),
                              LittleBluredContainer(
                                title: "Sunrise",
                                subtitle: "${sunset.hour}:${sunset.minute}",
                              ),
                            ],
                          ),
                          24.height
                        ],
                      ),
                    );
            },
          )),
    );
  }
}
