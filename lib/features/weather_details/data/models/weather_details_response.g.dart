// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDetailsResponse _$WeatherDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherDetailsResponse(
      cod: json['cod'] as String? ?? "",
      message: json['message'] as int? ?? 0,
      cnt: json['cnt'] as int? ?? 0,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => WeatherInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      city: json['city'] == null
          ? const CityModel()
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDetailsResponseToJson(
        WeatherDetailsResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
