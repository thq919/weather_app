// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather_app/features/weather_details/presentation/screens/weather_details_screen.dart';
import 'package:weather_app/features/weather_home/presentation/screen/weather_home_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: WheatherHomeScreen,
      initial: true,
    ),
    AutoRoute(
      page: WeatherDetailsScreen,
    ),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
