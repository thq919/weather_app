import 'package:json_annotation/json_annotation.dart';

import 'package:weather_app/features/weather_details/domain/entity/common/city_entity.dart';

import 'coord_model.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel extends CityEntity {
  const CityModel({
    final int id = 0,
    final String name = "",
    final CoordModel coord = const CoordModel(),
    final String country = "",
    final int population = 0,
    final int timezone = 0,
    final int sunrise = 0,
    final int sunset = 0,
  }) : super(
          id: id,
          name: name,
          coord: coord,
          country: country,
          population: population,
          timezone: timezone,
          sunrise: sunrise,
          sunset: sunset,
        );

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CityModelToJson(this);
}
