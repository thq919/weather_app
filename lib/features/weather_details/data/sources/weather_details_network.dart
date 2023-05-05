import 'package:injectable/injectable.dart';
import 'package:weather_app/core/api/const_units/const_units.dart';
import 'package:weather_app/core/api/failures/handle_dio_error.dart';
import 'package:weather_app/features/weather_details/data/models/weather_details_response.dart';
import 'package:weather_app/features/weather_details/data/sources/weather_details_source.dart';

import '../../../../config.dart';
import '../../../../core/api/client.dart';

@prodMock
@emptyMock
@LazySingleton(as: WeatherDetailsSource)
class WeatherDetailsNetworks implements WeatherDetailsSource {
  final MainApi api;
  const WeatherDetailsNetworks(this.api);

  @override
  Future<WeatherDetailsResponse> getForecast(String query) async {
    try {
      final response = await api.client().getForecast(
            query,
            configApiKey,
            ConstUnits.metric,
          );

      return response;
    } catch (e) {
      return HandleDioError<WeatherDetailsResponse>(e)();
    }
  }
}
