import 'package:dartz/dartz.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';

import '../../../../core/api/failures/failure.dart';

abstract class WeatherDetailsRepositories {
  Future<Either<Failure, WeatherDetailsEntity>> getForecast(String query);
}
