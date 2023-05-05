
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/common/rain_entity.dart';

part 'rain_model.g.dart';

@JsonSerializable()
class RainModel extends RainEntity {
  const RainModel({
    super.h = 0,
  });

  factory RainModel.fromJson(Map<String, dynamic> json) =>
      _$RainModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RainModelToJson(this);
}
