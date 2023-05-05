import 'dart:convert';

import 'package:equatable/equatable.dart';

class MainInfoEntity extends Equatable {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int seaLevel;
  final int grndLevel;
  final int humidity;
  final double tempKf;
  const MainInfoEntity({
    this.temp = 0,
    this.feelsLike = 0,
    this.tempMin = 0,
    this.tempMax = 0,
    this.pressure = 0,
    this.seaLevel = 0,
    this.grndLevel = 0,
    this.humidity = 0,
    this.tempKf = 0,
  });

  MainInfoEntity copyWith({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? seaLevel,
    int? grndLevel,
    int? humidity,
    double? tempKf,
  }) {
    return MainInfoEntity(
      temp: temp ?? this.temp,
      feelsLike: feelsLike ?? this.feelsLike,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      pressure: pressure ?? this.pressure,
      seaLevel: seaLevel ?? this.seaLevel,
      grndLevel: grndLevel ?? this.grndLevel,
      humidity: humidity ?? this.humidity,
      tempKf: tempKf ?? this.tempKf,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': temp,
      'feelsLike': feelsLike,
      'tempMin': tempMin,
      'tempMax': tempMax,
      'pressure': pressure,
      'seaLevel': seaLevel,
      'grndLevel': grndLevel,
      'humidity': humidity,
      'tempKf': tempKf,
    };
  }

  factory MainInfoEntity.fromMap(Map<String, dynamic> map) {
    return MainInfoEntity(
      temp: (map["temp"] ?? 0.0) as double,
      feelsLike: (map["feelsLike"] ?? 0.0) as double,
      tempMin: (map["tempMin"] ?? 0.0) as double,
      tempMax: (map["tempMax"] ?? 0.0) as double,
      pressure: (map["pressure"] ?? 0) as int,
      seaLevel: (map["seaLevel"] ?? 0) as int,
      grndLevel: (map["grndLevel"] ?? 0) as int,
      humidity: (map["humidity"] ?? 0) as int,
      tempKf: (map["tempKf"] ?? 0.0) as double,
    );
  }

  toJson() => toMap();

  factory MainInfoEntity.fromJson(String source) => MainInfoEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      temp,
      feelsLike,
      tempMin,
      tempMax,
      pressure,
      seaLevel,
      grndLevel,
      humidity,
      tempKf,
    ];
  }
}
