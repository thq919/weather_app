// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindModel _$WindModelFromJson(Map<String, dynamic> json) => WindModel(
      speed: (json['speed'] as num?)?.toDouble() ?? 0,
      deg: json['deg'] as int? ?? 0,
      gust: (json['gust'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$WindModelToJson(WindModel instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
