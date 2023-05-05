// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordModel _$CoordModelFromJson(Map<String, dynamic> json) => CoordModel(
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$CoordModelToJson(CoordModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
