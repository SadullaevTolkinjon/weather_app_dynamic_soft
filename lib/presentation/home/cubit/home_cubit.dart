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
    build((buildable) =>
        buildable.copyWith(loading: true, failed: false, success: false));
    try {
      final WeatherModel data = await _repository.fetchCurrentWeather();
      await _preference.setWeatherData(data);
      build((buildable) =>
          buildable.copyWith(loading: false, failed: false, success: true));
    } catch (e) {
      build((buildable) =>
          buildable.copyWith(loading: false, failed: true, success: false));
    }
  }

  selectHourlyWeeklyForecast(int index) {
    build((buildable) => buildable.copyWith(selected_forecast: index));
  }
}
