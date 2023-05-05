// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/features/weather_details/presentation/cubits/cache/get_weather_details_cache_cubit.dart';
import 'package:weather_app/features/weather_details/presentation/cubits/cache/get_weather_details_cache_state.dart';

import '../../../../setup.dart';
import '../../domain/entity/weather_details_entity.dart';

class GetWeatherDetailsBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, GetWeatherDetailsCacheState) builder;
  const GetWeatherDetailsBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  State<GetWeatherDetailsBuilder> createState() =>
      _GetWeatherDetailsBuilderState();
}

class _GetWeatherDetailsBuilderState extends State<GetWeatherDetailsBuilder> {
  final getWeatherDetailsCacheCubit = getIt<GetWeatherDetailsCacheCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherDetailsCacheCubit,
            GetWeatherDetailsCacheState>(
        bloc: getWeatherDetailsCacheCubit,
        builder: (context, state) {
          if (state.response == const WeatherDetailsEntity()) {
            return const Center(child: Text("Ошибка получения данных"));
          }

          return widget.builder.call(context, state);
        });
  }
}
