import 'package:freezed_annotation/freezed_annotation.dart';
import '../weather_model/weather_model.dart';
part 'weekly_weather_model.freezed.dart';
part 'weekly_weather_model.g.dart';

@freezed
class WeeklyWeatherModel with _$WeeklyWeatherModel {
  const factory WeeklyWeatherModel(
    City? city,
    String? cod,
    num? message,
    num? cnt,
    List<ListElement>? list,
  ) = _WeeklyWeatherModel;

  factory WeeklyWeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeeklyWeatherModelFromJson(json);
}

@freezed
class City with _$City {
  const factory City(
    num? id,
    String? name,
    Coord? coord,
    String? country,
    num? population,
    num? timezone,
    num? sunrise,
    num? sunset,
  ) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}

@freezed
class Coord with _$Coord {
  const factory Coord(
    double? lon,
    double? lat,
  ) = _Coord;

  factory Coord.fromJson(Map<String, Object?> json) => _$CoordFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement(
    num? dt,
    WeatherMain? main,
    List<Weather>? weather,
    Clouds? clouds,
    Wind? wind,
    num? visibility,
    num? pop,
    Sys? sys,
    String? dt_txt
  ) = _ListElement;

  factory ListElement.fromJson(Map<String, Object?> json) =>
      _$ListElementFromJson(json);
}
