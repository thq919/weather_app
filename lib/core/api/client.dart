import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/core/api/base_url/base_url_cubit.dart';
import 'package:weather_app/features/weather_details/data/models/weather_details_response.dart';

import 'interceptors/custom_log_interceptor.dart';

part 'client.g.dart';

@RestApi(baseUrl: "")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/data/2.5/forecast")
  Future<WeatherDetailsResponse> getForecast(
    @Query('q') String q,
    @Query('appid') String appid,
    @Query('units') String units,
  );
  
}

@LazySingleton()
class MainApi {
  final BaseUrlCubit baseUrlCubit;
  final CustomLogInterceptor logInterceptor;
  const MainApi(
    this.baseUrlCubit,
    this.logInterceptor,
  );

  RestClient client() {
    final dio = dioClient();
    return RestClient(dio, baseUrl: baseUrlCubit.url);
  }

  Dio dioClient() {
    final dio = Dio();
    dio.interceptors.add(logInterceptor);
    return dio;
  }
}
