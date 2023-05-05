import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/common/weather_entity.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel extends WeatherEntity {
  const WeatherModel({
    super.id = 0,
    super.main = "",
    super.description = "",
    super.icon = "",
  });

   factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}


