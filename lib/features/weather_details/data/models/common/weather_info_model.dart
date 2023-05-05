import 'package:weather_app/features/weather_details/domain/entity/common/weather_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'clouds_model.dart';
import 'main_info_model.dart';
import 'rain_model.dart';
import 'sys_model.dart';
import 'weather_model.dart';
import 'wind_model.dart';
part 'weather_info_model.g.dart';

@JsonSerializable()
class WeatherInfoModel extends WeatherInfoEntity {
  const WeatherInfoModel({
    final int dt = 0,
    final MainInfoModel main = const MainInfoModel(),
    final List<WeatherModel> weather = const [],
    final CloudsModel clouds = const CloudsModel(),
    final WindModel wind = const WindModel(),
    final int visibility = 0,
    final double pop = 0,
    final RainModel rain = const RainModel(),
    final SysModel sys = const SysModel(),
    final String dtTxt = "",
  }) : super(
          dt: dt,
          main: main,
          weather: weather,
          clouds: clouds,
          wind: wind,
          visibility: visibility,
          pop: pop,
          rain: rain,
          sys: sys,
          dtTxt: dtTxt,
        );
  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WeatherInfoModelToJson(this);
}
