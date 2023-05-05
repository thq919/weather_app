import 'package:weather_app/features/weather_details/domain/entity/common/clouds_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds_model.g.dart';

@JsonSerializable()
class CloudsModel extends CloudsEntity {
  const CloudsModel({
    super.all = 0,
  });
  factory CloudsModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CloudsModelToJson(this);
}
