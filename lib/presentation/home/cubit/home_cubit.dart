import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/preferences/main_preference.dart';
import 'package:weather_app_dynamic/domain/model/weather_model/weather_model.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  final MainRepository _repository;
  final MainPreference _preference;
  HomeCubit(this._repository, this._preference)
      : super(const HomeBuildableState()) {
    fetchCurrentWeather();
  }

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  fetchCurrentWeather() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
        print("------------------------------");
        print(connectivityResult);
    build(
      (buildable) =>
          buildable.copyWith(loading: true, failed: false, success: false),
    );
    try {
      if (connectivityResult.contains(ConnectivityResult.none)) {
        print("ishere-----------------");
        String? localData = await _preference.getWeatherData();
        if (localData != null) {
          var decodedData = jsonDecode(localData);
          final WeatherModel weather = WeatherModel.fromJson(decodedData);
          build((buildable) => buildable.copyWith(
              data: weather, loading: false, success: true, failed: false));
        } else {
          print("elseeeeeeee");
          build((buildable) => buildable.copyWith(
              loading: false,
              success: false,
              failed: true,
              error: "Check your network connection"));
        }
      } else {
        try {
          final WeatherModel data = await _repository.fetchCurrentWeather();
          await _preference.setWeatherData(data);
          build((buildable) => buildable.copyWith(
              loading: false, failed: false, success: true, data: data));
        } catch (e) {
          build((buildable) => buildable.copyWith(
              loading: false,
              failed: true,
              success: false,
              error: e.toString()));
        }
      }
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
            loading: false, failed: true, success: false, error: e.toString()),
      );
    }
  }

  selectHourlyWeeklyForecast(int index) {
    build(
      (buildable) => buildable.copyWith(
        selected_forecast: index,
        failed: false,
        success: false,
      ),
    );
  }
}
