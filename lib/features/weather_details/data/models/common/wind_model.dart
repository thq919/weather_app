import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/common/wind_entity.dart';

part 'wind_model.g.dart';

@JsonSerializable()
class WindModel extends WindEntity {
  const WindModel({
    super.speed = 0,
    super.deg = 0,
    super.gust = 0,
  });
  factory WindModel.fromJson(Map<String, dynamic> json) =>
      _$WindModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WindModelToJson(this);
}
