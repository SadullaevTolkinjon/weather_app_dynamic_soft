// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyWeatherModelImpl _$$WeeklyWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyWeatherModelImpl(
      json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      json['cod'] as String?,
      json['message'] as int?,
      json['cnt'] as int?,
      (json['list'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeeklyWeatherModelImplToJson(
        _$WeeklyWeatherModelImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      json['id'] as int?,
      json['name'] as String?,
      json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      json['country'] as String?,
      json['population'] as int?,
      json['timezone'] as int?,
      json['sunrise'] as int?,
      json['sunset'] as int?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$CoordImpl _$$CoordImplFromJson(Map<String, dynamic> json) => _$CoordImpl(
      (json['lon'] as num?)?.toDouble(),
      (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CoordImplToJson(_$CoordImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      json['dt'] as int?,
      json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      json['visibility'] as int?,
      json['pop'] as int?,
      json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      json['dt_txt'] as String?,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dt_txt,
    };
