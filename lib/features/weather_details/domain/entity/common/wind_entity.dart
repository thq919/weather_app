
import 'dart:convert';

import 'package:equatable/equatable.dart';

class WindEntity extends Equatable {
  final double speed;
  final int deg;
  final double gust;
  const WindEntity({
    this.speed = 0,
    this.deg = 0,
    this.gust = 0,
  });

  WindEntity copyWith({
    double? speed,
    int? deg,
    double? gust,
  }) {
    return WindEntity(
      speed: speed ?? this.speed,
      deg: deg ?? this.deg,
      gust: gust ?? this.gust,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
      'deg': deg,
      'gust': gust,
    };
  }

  factory WindEntity.fromMap(Map<String, dynamic> map) {
    return WindEntity(
      speed: (map["speed"] ?? 0.0) as double,
      deg: (map["deg"] ?? 0) as int,
      gust: (map["gust"] ?? 0.0) as double,
    );
  }

  toJson() => toMap();

  factory WindEntity.fromJson(String source) => WindEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [speed, deg, gust];
}
