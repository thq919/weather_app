import 'package:weather_app/features/weather_details/domain/entity/common/coord_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coord_model.g.dart';

@JsonSerializable()
class CoordModel extends CoordEntity {
  const CoordModel({
    super.lat = 0,
    super.lon = 0,
  });
  factory CoordModel.fromJson(Map<String, dynamic> json) =>
      _$CoordModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoordModelToJson(this);
}
