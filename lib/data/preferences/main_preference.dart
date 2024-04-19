import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_dynamic/domain/model/weekly_weather_model/weekly_weather_model.dart';

import '../../domain/model/weather_model/weather_model.dart';

@Injectable()
class MainPreference {
  final SharedPreferences _sharedPreferences;
  MainPreference(this._sharedPreferences);
  final String _key = "initial_screen";
  final String _weather = "currentweather";
  final String _weekly_weather = "weekly_weather";

  Future setInitialScreen(int value) async {
    await _sharedPreferences.setInt(_key, value);
  }

  getinitialScreen() {
    return _sharedPreferences.getInt(_key);
  }

  Future setWeatherData(WeatherModel data) async {
    String encodedData = jsonEncode(data);
    await _sharedPreferences.setString(_weather, encodedData);
  }

  getWeatherData() async {
    return _sharedPreferences.getString(_weather);
  }

  Future setWeeklyWeatherData(WeeklyWeatherModel data) async {
    String encodedData = jsonEncode(data);
    await _sharedPreferences.setString(_weekly_weather, encodedData);
  }

  getWeeklyWeatherData() async {
    return _sharedPreferences.getString(_weekly_weather);
  }
}
