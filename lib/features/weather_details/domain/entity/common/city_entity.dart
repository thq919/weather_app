import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'coord_entity.dart';


class CityEntity extends Equatable {
  final int id;
  final String name;
  final CoordEntity coord;
  final String country;
  final int population;
  final int timezone;
  final int sunrise;
  final int sunset;
  const CityEntity({
    this.id = 0,
    this.name = "",
    this.coord = const CoordEntity(),
    this.country = "",
    this.population = 0,
    this.timezone = 0,
    this.sunrise = 0,
    this.sunset = 0,
  });

  CityEntity copyWith({
    int? id,
    String? name,
    CoordEntity? coord,
    String? country,
    int? population,
    int? timezone,
    int? sunrise,
    int? sunset,
  }) {
    return CityEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      coord: coord ?? this.coord,
      country: country ?? this.country,
      population: population ?? this.population,
      timezone: timezone ?? this.timezone,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'coord': coord.toMap(),
      'country': country,
      'population': population,
      'timezone': timezone,
      'sunrise': sunrise,
      'sunset': sunset,
    };
  }

  factory CityEntity.fromMap(Map<String, dynamic> map) {
    return CityEntity(
      id: (map["id"] ?? 0) as int,
      name: (map["name"] ?? '') as String,
      coord: CoordEntity.fromMap((map["coord"]?? Map<String,dynamic>.from({})) as Map<String,dynamic>),
      country: (map["country"] ?? '') as String,
      population: (map["population"] ?? 0) as int,
      timezone: (map["timezone"] ?? 0) as int,
      sunrise: (map["sunrise"] ?? 0) as int,
      sunset: (map["sunset"] ?? 0) as int,
    );
  }

  toJson() => toMap();

  factory CityEntity.fromJson(String source) => CityEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      coord,
      country,
      population,
      timezone,
      sunrise,
      sunset,
    ];
  }
}
