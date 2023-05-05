import 'package:equatable/equatable.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';

class GetWeatherDetailsCacheState extends Equatable {
  final WeatherDetailsEntity response;
  const GetWeatherDetailsCacheState({
    this.response = const WeatherDetailsEntity(),
  });

  GetWeatherDetailsCacheState copyWith({
    WeatherDetailsEntity? response,
  }) {
    return GetWeatherDetailsCacheState(
      response: response ?? this.response,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response': response.toMap(),
    };
  }

  factory GetWeatherDetailsCacheState.fromMap(Map<String, dynamic> map) {
    return GetWeatherDetailsCacheState(
      response: WeatherDetailsEntity.fromMap((map["response"] ??
          Map<String, dynamic>.from({})) as Map<String, dynamic>),
    );
  }

  toJson() => toMap();

  factory GetWeatherDetailsCacheState.fromJson(Map<String, dynamic> source) =>
      GetWeatherDetailsCacheState.fromMap(source);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [response];

  GetWeatherDetailsCacheState get get3DaysWhereLowest {
    final list = response.list
      ..sort((a, b) => a.main.temp.compareTo(b.main.temp));
    return copyWith(
      response: response.copyWith(
        list: list.getRange(0, 3).toList(),
      ),
    );
  }
}
