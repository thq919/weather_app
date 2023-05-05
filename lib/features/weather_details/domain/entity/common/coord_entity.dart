import 'dart:convert';

import 'package:equatable/equatable.dart';

class CoordEntity extends Equatable {
  final double lat;
  final double lon;
  const CoordEntity({
    this.lat = 0,
    this.lon = 0,
  });

  CoordEntity copyWith({
    double? lat,
    double? lon,
  }) {
    return CoordEntity(
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'lon': lon,
    };
  }

  factory CoordEntity.fromMap(Map<String, dynamic> map) {
    return CoordEntity(
      lat: (map["lat"] ?? 0.0) as double,
      lon: (map["lon"] ?? 0.0) as double,
    );
  }

  toJson() => toMap();

  factory CoordEntity.fromJson(String source) => CoordEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [lat, lon];
}
