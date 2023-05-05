import 'dart:convert';

import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final int id;
  final String main;
  final String description;
  final String icon;
  const WeatherEntity({
    this.id = 0,
    this.main = "",
    this.description = "",
    this.icon = "",
  });

  WeatherEntity copyWith({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) {
    return WeatherEntity(
      id: id ?? this.id,
      main: main ?? this.main,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }

  factory WeatherEntity.fromMap(Map<String, dynamic> map) {
    return WeatherEntity(
      id: (map["id"] ?? 0) as int,
      main: (map["main"] ?? '') as String,
      description: (map["description"] ?? '') as String,
      icon: (map["icon"] ?? '') as String,
    );
  }

  toJson() => toMap();

  factory WeatherEntity.fromJson(String source) => WeatherEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, main, description, icon];
}
