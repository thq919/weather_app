// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainInfoModel _$MainInfoModelFromJson(Map<String, dynamic> json) =>
    MainInfoModel(
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feelsLike'] as num?)?.toDouble() ?? 0,
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0,
      pressure: json['pressure'] as int? ?? 0,
      seaLevel: json['seaLevel'] as int? ?? 0,
      grndLevel: json['grndLevel'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
      tempKf: (json['tempKf'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$MainInfoModelToJson(MainInfoModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'seaLevel': instance.seaLevel,
      'grndLevel': instance.grndLevel,
      'humidity': instance.humidity,
      'tempKf': instance.tempKf,
    };
