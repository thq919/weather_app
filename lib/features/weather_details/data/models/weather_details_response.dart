import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/features/weather_details/data/models/common/city_model.dart';
import 'package:weather_app/features/weather_details/data/models/common/weather_info_model.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';

part 'weather_details_response.g.dart';

@JsonSerializable()
class WeatherDetailsResponse extends WeatherDetailsEntity {
  const WeatherDetailsResponse({
    final String cod = "",
    final int message = 0,
    final int cnt = 0,
    final List<WeatherInfoModel> list = const [],
    final CityModel city = const CityModel(),
  }) : super(
          cod: cod,
          message: message,
          cnt: cnt,
          list: list,
          city: city,
        );
  factory WeatherDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailsResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WeatherDetailsResponseToJson(this);
}
