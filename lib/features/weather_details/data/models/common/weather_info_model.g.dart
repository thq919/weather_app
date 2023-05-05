// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherInfoModel _$WeatherInfoModelFromJson(Map<String, dynamic> json) =>
    WeatherInfoModel(
      dt: json['dt'] as int? ?? 0,
      main: json['main'] == null
          ? const MainInfoModel()
          : MainInfoModel.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      clouds: json['clouds'] == null
          ? const CloudsModel()
          : CloudsModel.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? const WindModel()
          : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int? ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0,
      rain: json['rain'] == null
          ? const RainModel()
          : RainModel.fromJson(json['rain'] as Map<String, dynamic>),
      sys: json['sys'] == null
          ? const SysModel()
          : SysModel.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dtTxt'] as String? ?? "",
    );

Map<String, dynamic> _$WeatherInfoModelToJson(WeatherInfoModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'rain': instance.rain,
      'sys': instance.sys,
      'dtTxt': instance.dtTxt,
    };
