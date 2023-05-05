import '../models/weather_details_response.dart';

abstract class WeatherDetailsSource {
  Future<WeatherDetailsResponse> getForecast(String query);
}
