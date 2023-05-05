// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas, duplicate_ignore
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/base_url/base_url_cubit.dart' as _i4;
import 'core/api/client.dart' as _i9;
import 'core/api/interceptors/custom_log_interceptor.dart' as _i8;
import 'core/logger/logger.dart' as _i6;
import 'core/logger/logger_impl.dart' as _i7;
import 'core/router/app_router.dart' as _i3;
import 'features/weather_details/data/repositories/weather_details_impl.dart'
    as _i14;
import 'features/weather_details/data/sources/weather_details_network.dart'
    as _i12;
import 'features/weather_details/data/sources/weather_details_source.dart'
    as _i10;
import 'features/weather_details/data/sources/weather_details_test.dart'
    as _i11;
import 'features/weather_details/domain/repositories/weather_details_repository.dart'
    as _i13;
import 'features/weather_details/domain/usacases/weather_details_usecases.dart'
    as _i15;
import 'features/weather_details/presentation/cubits/cache/get_weather_details_cache_cubit.dart'
    as _i5;
import 'features/weather_details/presentation/cubits/get_weather_details_cubit.dart'
    as _i16;

const String _test = 'test';
const String _prod = 'prod';
const String _ = '';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.singleton<_i4.BaseUrlCubit>(_i4.BaseUrlCubit());
  gh.lazySingleton<_i5.GetWeatherDetailsCacheCubit>(
      () => _i5.GetWeatherDetailsCacheCubit());
  gh.singleton<_i6.LoggerProvider>(_i7.MyLogger());
  gh.lazySingleton<_i8.CustomLogInterceptor>(
      () => _i8.CustomLogInterceptor(gh<_i6.LoggerProvider>()));
  gh.lazySingleton<_i9.MainApi>(() => _i9.MainApi(
        gh<_i4.BaseUrlCubit>(),
        gh<_i8.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i10.WeatherDetailsSource>(
    () => _i11.WeatherDetailsTest(gh<_i9.MainApi>()),
    registerFor: {_test},
  );
  gh.lazySingleton<_i10.WeatherDetailsSource>(
    () => _i12.WeatherDetailsNetworks(gh<_i9.MainApi>()),
    registerFor: {
      _prod,
      _,
    },
  );
  gh.lazySingleton<_i13.WeatherDetailsRepositories>(
      () => _i14.WeatherDetailsImpl(source: gh<_i10.WeatherDetailsSource>()));
  gh.lazySingleton<_i15.WeatherDetailsUsecases>(() =>
      _i15.WeatherDetailsUsecases(
          weatherDetailsRepositories: gh<_i13.WeatherDetailsRepositories>()));
  gh.factory<_i16.GetWeatherDetailsCubit>(() => _i16.GetWeatherDetailsCubit(
        gh<_i15.WeatherDetailsUsecases>(),
        gh<_i5.GetWeatherDetailsCacheCubit>(),
      ));
  return getIt;
}
