import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:weather_app/features/weather_details/domain/entity/common/city_entity.dart';
import 'package:weather_app/features/weather_details/domain/entity/common/weather_info_entity.dart';

class WeatherDetailsEntity extends Equatable {
  final String cod;
  final int message;
  final int cnt;
  final List<WeatherInfoEntity> list;
  final CityEntity city;
  const WeatherDetailsEntity({
    this.cod = "",
    this.message = 0,
    this.cnt = 0,
    this.list = const [],
    this.city = const CityEntity(),
  });

  WeatherDetailsEntity copyWith({
    String? cod,
    int? message,
    int? cnt,
    List<WeatherInfoEntity>? list,
    CityEntity? city,
  }) {
    return WeatherDetailsEntity(
      cod: cod ?? this.cod,
      message: message ?? this.message,
      cnt: cnt ?? this.cnt,
      list: list ?? this.list,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cod': cod,
      'message': message,
      'cnt': cnt,
      'list': list.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'city': city.toMap(),
    };
  }

  factory WeatherDetailsEntity.fromMap(Map<String, dynamic> map) {
    return WeatherDetailsEntity(
      cod: (map["cod"] ?? '') as String,
      message: (map["message"] ?? 0) as int,
      cnt: (map["cnt"] ?? 0) as int,
      list: List<WeatherInfoEntity>.from(
        ((map['list'] ?? const <WeatherInfoEntity>[]) as List)
            .map<WeatherInfoEntity>((x) {
          return WeatherInfoEntity.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      city: CityEntity.fromMap((map["city"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
    );
  }

  toJson() => toMap();

  factory WeatherDetailsEntity.fromJson(String source) =>
      WeatherDetailsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      cod,
      message,
      cnt,
      list,
      city,
    ];
  }
}
