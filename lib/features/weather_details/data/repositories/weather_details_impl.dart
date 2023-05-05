import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather_details/data/sources/weather_details_source.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';
import 'package:weather_app/core/api/failures/failure.dart';
import 'package:weather_app/features/weather_details/domain/repositories/weather_details_repository.dart';

@LazySingleton(as: WeatherDetailsRepositories)
class WeatherDetailsImpl implements WeatherDetailsRepositories {
  final WeatherDetailsSource source;
  const WeatherDetailsImpl({
    required this.source,
  });

  @override
  Future<Either<Failure, WeatherDetailsEntity>> getForecast(
    String query,
  ) async {
    try {
      final response = await source.getForecast(query);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
