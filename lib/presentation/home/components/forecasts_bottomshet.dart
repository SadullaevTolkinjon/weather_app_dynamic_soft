import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_dynamic/presentation/home/components/cutom_txt_btn.dart';
import 'package:weather_app_dynamic/presentation/home/components/weather_products.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';
import '../../../constants/color/color_const.dart';

class BottomSheetForecasts extends StatelessWidget {
  const BottomSheetForecasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 325,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: AppColor.kPrimaryColor2.withOpacity(0.5),
            ),
            child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
              properties: (buildable) => [buildable.selected_forecast],
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 12, left: 12, top: 25),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 5,
                            child: CustomTxtBtn(
                              ontap: () {
                                context
                                    .read<HomeCubit>()
                                    .selectHourlyWeeklyForecast(0);
                              },
                              isSelected:
                                  state.selected_forecast == 0 ? true : false,
                              title: "Hourly Forecast",
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: CustomTxtBtn(
                              ontap: () {
                                context
                                    .read<HomeCubit>()
                                    .selectHourlyWeeklyForecast(1);
                              },
                              isSelected:
                                  state.selected_forecast == 1 ? true : false,
                              title: "Weekly Forecast",
                            ),
                          )
                        ],
                      ),
                    ),
                    20.height,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...List.generate(
                            10,
                            (index) => const WeatherProduct(),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
