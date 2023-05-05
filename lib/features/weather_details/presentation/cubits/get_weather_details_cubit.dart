import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/cubits/fetch_state.dart';
import 'package:weather_app/features/weather_details/domain/entity/weather_details_entity.dart';
import 'package:weather_app/features/weather_details/domain/usacases/weather_details_usecases.dart';
import '../../../../core/api/failures/failure.dart';
import 'cache/get_weather_details_cache_cubit.dart';

@injectable
class GetWeatherDetailsCubit extends Cubit<FetchState<WeatherDetailsEntity>> {
  final WeatherDetailsUsecases usecases;
  final GetWeatherDetailsCacheCubit cacheCubit;
  GetWeatherDetailsCubit(
    this.usecases,
    this.cacheCubit,
  ) : super(FetchInitial());

  Future<void> call(String query) async {
    emit(FetchLoading());
    final response = await usecases.getForecast(query);
    response.fold(_onError, _onSuccess);
  }

  void _onError(Failure l) => emit(FetchError(l));
  void _onSuccess(WeatherDetailsEntity r) {
    cacheCubit.set(r);
    emit(FetchLoaded(r));
  }
}
