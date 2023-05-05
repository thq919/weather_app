import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/cubits/bool_cubit.dart';
import 'package:weather_app/core/cubits/fetch_state.dart';
import 'package:weather_app/core/cubits/str_cubit.dart';
import 'package:weather_app/core/router/app_router.dart';
import 'package:weather_app/features/weather_details/presentation/cubits/get_weather_details_cubit.dart';
import 'package:weather_app/features/weather_details/presentation/widgets/loader_build.dart';
import 'package:weather_app/features/weather_home/presentation/widgets/city_form.dart';

import '../../../../setup.dart';

class WheatherHomeScreen extends StatefulWidget {
  const WheatherHomeScreen({
    super.key,
  });

  @override
  State<WheatherHomeScreen> createState() => _WheatherHomeScreenState();
}

class _WheatherHomeScreenState extends State<WheatherHomeScreen> {
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 16);
  final getWeatherDetailsCubit = getIt<GetWeatherDetailsCubit>();

  final queryCubit = StrCubit();
  final validateFieldState = BoolCubit(false);
  final appRouter = getIt<AppRouter>();

  void _validateFields(BuildContext context, GlobalKey<FormState> key) {
    validateFieldState.set(key.currentState?.validate() == true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wheather app")),
      body: BlocListener<GetWeatherDetailsCubit, FetchState>(
        bloc: getWeatherDetailsCubit,
        listener: (context, state) {
          if (state is FetchError) {
            final message = """Произошла ошибка:\n${state.failure.message}""";
            appRouter.push(WeatherDetailsRoute(errorMessage: message));
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          }
          if (state is FetchLoaded) {
            appRouter.push(WeatherDetailsRoute());
          }
        },
        child: LoaderBuilder<FetchState>(
          getWeatherDetailsCubit,
          isLoading: (p0) => p0 is FetchLoading,
          childBuilder: (state) => Center(
            child: Padding(
              padding: horizontalPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityForm(
                    validateFields: _validateFields,
                    onChanged: (str) => queryCubit.setText = str,
                    onPressedKnow: onPressedKnow,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPressedKnow(BuildContext context, GlobalKey<FormState> key) {
    _validateFields(context, key);
    if (validateFieldState.state) {
      getWeatherDetailsCubit.call(queryCubit.state);
    }
  }
}
