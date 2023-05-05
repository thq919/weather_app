import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/cubits/bool_cubit.dart';
import 'package:weather_app/features/weather_details/presentation/cubits/cache/get_weather_details_cache_cubit.dart';

import '../../../../setup.dart';
import '../widgets/get_weather_details_builder.dart';
import '../widgets/get_weather_details_element.dart';

class WeatherDetailsScreen extends StatefulWidget {
  final String errorMessage;
  const WeatherDetailsScreen({
    Key? key,
    this.errorMessage = "",
  }) : super(key: key);

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends State<WeatherDetailsScreen> {
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 16);

  final subScreen = Scaffold(
    appBar: AppBar(title: Row(children: const [Text("Назад")])),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: WeatherDetailsElement(
          getIt<GetWeatherDetailsCacheCubit>().state.get3DaysWhereLowest),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Назад"),
            TextButton(
              onPressed: () => Navigator.of(context).push<void>(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => subScreen)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow.withOpacity(0.8),
              ),
              child: const Text(
                "3 дня самые низкие °C",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: horizontalPadding,
          child: Builder(
            builder: (context) {
              if (widget.errorMessage.trim().isNotEmpty) {
                return Text(widget.errorMessage);
              }
              return GetWeatherDetailsBuilder(
                builder: (context, state) {
                  return WeatherDetailsElement(state);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
