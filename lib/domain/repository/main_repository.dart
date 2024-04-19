import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/data/api/main_api.dart';
import 'package:weather_app_dynamic/domain/model/weather_model/weather_model.dart';
import 'package:weather_app_dynamic/domain/model/weekly_weather_model/weekly_weather_model.dart';

@Injectable()
class MainRepository {
  final MainApi _mainApi;

  MainRepository(this._mainApi);

  Future fetchCurrentWeather(double lat, double long, String exclude) async {
    final response = await _mainApi.fetchCurrentWeather(lat, long, exclude);
    var decodedData = jsonDecode(response.body);
    return WeatherModel.fromJson(decodedData);
  }

  WeatherModel decodeWeatherData(String data) {
    return WeatherModel.fromJson(jsonDecode(data));
  }

  Future fetchWeekly(double lat, double long) async {
    final response = await _mainApi.fetchWeeklyWeather(lat, long);
    var decodedData = jsonDecode(response.body);
    return WeeklyWeatherModel.fromJson(decodedData);
  }

  WeeklyWeatherModel decodeWeeklyData(String data) {
    return WeeklyWeatherModel.fromJson(jsonDecode(data));
  }

  String getWeekdayAndTimeFromString(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String weekday = getWeekday(dateTime);
    String formattedTime = getFormattedTime(dateTime);
    return '$weekday $formattedTime';
  }

  String getWeekday(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }

  String getFormattedTime(DateTime dateTime) {
    String period = dateTime.hour < 12 ? 'AM' : 'PM';
    int hour = dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12;
    String minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  Tuple<int, int> getHourAndMinuteFromUnixTimestamp(int unixTimestamp) {
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
    return Tuple(dateTime.hour, dateTime.minute);
  }

  IconData getWeatherIcon(String main) {
    switch (main) {
      case 'Clear':
        return Icons.wb_sunny;
      case 'Clouds':
        return Icons.cloud;
      case 'Rain':
        return Icons.beach_access; // Change to rain icon
      case 'Thunderstorm':
        return Icons.flash_on;
      case 'Drizzle':
        return Icons.grain; // Change to drizzle icon
      case 'Snow':
        return Icons.ac_unit;
      case 'Mist':
      case 'Smoke':
      case 'Haze':
      case 'Dust':
      case 'Fog':
      case 'Sand':
      case 'Ash':
      case 'Squall':
      case 'Tornado':
        return Icons.blur_on; // Change to appropriate icon
      default:
        return Icons.blur_on; // Default icon
    }
  }
}

class Tuple<X, Y> {
  final X? hour;
  final Y? minute;
  Tuple(this.hour, this.minute);
}
