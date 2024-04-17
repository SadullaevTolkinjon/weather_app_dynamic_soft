
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel(
    Coord? coord,
    List<Weather>? weather,
    String? base_,
    WeatherMain? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  ) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds(
    int? all,
  ) = _Clouds;

  factory Clouds.fromJson(Map<String, Object?> json) => _$CloudsFromJson(json);
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
class WeatherMain with _$WeatherMain {
  const factory WeatherMain(
    double? temp,
    double? feels_ike,
    double? temp_min,
    double? temp_max,
    int? pressure,
    int? humidity,
  ) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, Object?> json) =>
      _$WeatherMainFromJson(json);
}

@freezed
class Sys with _$Sys {
  const factory Sys(
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  ) = _Sys;

  factory Sys.fromJson(Map<String, Object?> json) => _$SysFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather(
    int? id,
    String? main,
    String? description,
    String? icon,
  ) = _Weather;

  factory Weather.fromJson(Map<String, Object?> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind(
    double? speed,
    int? deg,
  ) = _Wind;

  factory Wind.fromJson(Map<String, Object?> json) => _$WindFromJson(json);
}
