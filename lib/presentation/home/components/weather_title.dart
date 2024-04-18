import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/home/cubit/home_cubit.dart';
import 'package:weather_app_dynamic/presentation/widgets/loader.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

import '../../../constants/app_texstyle/app_textstyle_const.dart';
import '../../../constants/color/color_const.dart';

class WeatherTitle extends StatelessWidget {
  const WeatherTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 55,
      left: 100,
      right: 80,
      child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) =>
              [buildable.loading, buildable.failed, buildable.data],
          builder: (context, state) {
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return Center(
                child: Text("${state.error}"),
              );
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Toshkent",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s24.copyWith(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                  ),
                ),
                8.height,
                Text(
                  "19°",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s24.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                ),
                Text(
                  "Mostly clear",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s24.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.kPrimiaryText,
                  ),
                ),
                4.height,
                Text(
                  "H:19°  L:19°",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s24.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
