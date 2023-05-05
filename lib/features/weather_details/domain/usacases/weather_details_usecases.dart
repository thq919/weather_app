import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';
import 'package:weather_app/core/api/failures/failure.dart';
import 'package:weather_app/features/weather_details/domain/repositories/weather_details_repository.dart';

@LazySingleton()
class WeatherDetailsUsecases implements WeatherDetailsRepositories {
  final WeatherDetailsRepositories weatherDetailsRepositories;

  const WeatherDetailsUsecases({
    required this.weatherDetailsRepositories,
  });

  @override
  Future<Either<Failure, WeatherDetailsEntity>> getForecast(query) {
    return weatherDetailsRepositories.getForecast(query);
  }
}
