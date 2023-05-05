import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entity/weather_details_entity.dart';
import 'get_weather_details_cache_state.dart';

@LazySingleton()
class GetWeatherDetailsCacheCubit
    extends HydratedCubit<GetWeatherDetailsCacheState> {
  GetWeatherDetailsCacheCubit() : super(const GetWeatherDetailsCacheState());

  void set(WeatherDetailsEntity r) {
    emit(GetWeatherDetailsCacheState(response: r));
  }

  @override
  GetWeatherDetailsCacheState? fromJson(json) =>
      GetWeatherDetailsCacheState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
