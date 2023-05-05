import 'package:flutter/material.dart';

import '../cubits/cache/get_weather_details_cache_state.dart';

class WeatherDetailsElement extends StatelessWidget {
  final GetWeatherDetailsCacheState state;

  const WeatherDetailsElement(
    this.state, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: state.response.list.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final item = state.response.list[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.cyan.withOpacity(0.2),
                  Colors.amberAccent.withOpacity(0.2),
                ],
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Дата: ${item.dtParsedDateText}'),
                Text('Время: ${item.dtParsedTimeText}'),
                Text('Температура °C: ${item.main.temp}'),
                Text('Влажность: ${item.main.humidity}%'),
                Text('Cкорость ветра: ${item.wind.speed} метров в секунду'),
              ],
            ),
          ),
        );
      },
    );
  }
}
