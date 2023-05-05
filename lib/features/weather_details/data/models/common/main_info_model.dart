import '../../../domain/entity/common/main_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main_info_model.g.dart';

@JsonSerializable()
class MainInfoModel extends MainInfoEntity {
  const MainInfoModel({
    double temp = 0,
    double feelsLike = 0,
    double tempMin = 0,
    double tempMax = 0,
    int pressure = 0,
    int seaLevel = 0,
    int grndLevel = 0,
    int humidity = 0,
    double tempKf = 0,
  }) : super(
          temp: temp,
          feelsLike: feelsLike,
          tempMin: tempMin,
          tempMax: tempMax,
          pressure: pressure,
          seaLevel: seaLevel,
          grndLevel: grndLevel,
          humidity: humidity,
          tempKf: tempKf,
        );
  factory MainInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MainInfoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainInfoModelToJson(this);
}
