import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/preferences/main_preference.dart';
import 'package:weather_app_dynamic/di/injection.dart';
import 'package:weather_app_dynamic/domain/model/location/location_model.dart';
import 'package:weather_app_dynamic/domain/model/weather_model/weather_model.dart';
import 'package:weather_app_dynamic/domain/model/weekly_weather_model/weekly_weather_model.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/domain/service/location_service.dart';
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

  late StreamSubscription<List<ConnectivityResult>> subscription;
  fetchCurrentWeather() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
        failed: false,
        success: false,
        isConnected: false,
        noLocalData: false,
      ),
    );

    try {
      AppLatLong location = const TashkentLocation();
      bool isAccess = await LocationService().checkPermission();
      if (isAccess == true) {
        location = await LocationService().getCurrentLocation();
      } else {
        await LocationService().requestPermission();
      }

      subscription = Connectivity().onConnectivityChanged.listen(
        (List<ConnectivityResult> result) async {
          if (result.contains(ConnectivityResult.mobile) ||
              result.contains(ConnectivityResult.wifi)) {
            final WeatherModel data = await _repository.fetchCurrentWeather(
              location.lat,
              location.long,
              "current",
            );
            final WeeklyWeatherModel weeklyWeatherData =
                await _repository.fetchWeekly(location.lat, location.long);
            await _preference.setWeatherData(data);
            await _preference.setWeeklyWeatherData(weeklyWeatherData);

            build(
              (buildable) => buildable.copyWith(
                loading: false,
                failed: false,
                success: true,
                isConnected: false,
                noLocalData: false,
                data: data,
                weeklyWeather: weeklyWeatherData,
              ),
            );
          } else if (result.contains(ConnectivityResult.none)) {
            String? localData = await _preference.getWeatherData();
            String? weeklyLocalData = await _preference.getWeeklyWeatherData();
            if (localData != null && weeklyLocalData != null) {
              final WeatherModel weather =
                  locator<MainRepository>().decodeWeatherData(localData);
              final WeeklyWeatherModel weeklyWeather =
                  locator<MainRepository>().decodeWeeklyData(weeklyLocalData);
              build(
                (buildable) => buildable.copyWith(
                    data: weather,
                    weeklyWeather: weeklyWeather,
                    loading: false,
                    success: true,
                    failed: false,
                    isConnected: true,
                    noLocalData: false,
                    error: "No internet ,You used local data"),
              );
            } else {
              build(
                (buildable) => buildable.copyWith(
                    loading: false,
                    success: false,
                    failed: true,
                    isConnected: true,
                    noLocalData: true,
                    error: "No Local data and No Internet connection"),
              );
            }
          }
        },
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failed: true,
          success: false,
          isConnected: false,
          noLocalData: false,
          error: e.toString(),
        ),
      );
    }
  }

  dispose() {
    subscription.cancel();
  }
}
