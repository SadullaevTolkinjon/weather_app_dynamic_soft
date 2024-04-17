// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['base_'] as String?,
      json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      json['visibility'] as int?,
      json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      json['dt'] as int?,
      json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      json['timezone'] as int?,
      json['id'] as int?,
      json['name'] as String?,
      json['cod'] as int?,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base_': instance.base_,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_$CloudsImpl _$$CloudsImplFromJson(Map<String, dynamic> json) => _$CloudsImpl(
      json['all'] as int?,
    );

Map<String, dynamic> _$$CloudsImplToJson(_$CloudsImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
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

_$WeatherMainImpl _$$WeatherMainImplFromJson(Map<String, dynamic> json) =>
    _$WeatherMainImpl(
      (json['temp'] as num?)?.toDouble(),
      (json['feels_ike'] as num?)?.toDouble(),
      (json['temp_min'] as num?)?.toDouble(),
      (json['temp_max'] as num?)?.toDouble(),
      json['pressure'] as int?,
      json['humidity'] as int?,
    );

Map<String, dynamic> _$$WeatherMainImplToJson(_$WeatherMainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_ike': instance.feels_ike,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$SysImpl _$$SysImplFromJson(Map<String, dynamic> json) => _$SysImpl(
      json['type'] as int?,
      json['id'] as int?,
      json['country'] as String?,
      json['sunrise'] as int?,
      json['sunset'] as int?,
    );

Map<String, dynamic> _$$SysImplToJson(_$SysImpl instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      json['id'] as int?,
      json['main'] as String?,
      json['description'] as String?,
      json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
      (json['speed'] as num?)?.toDouble(),
      json['deg'] as int?,
    );

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };
