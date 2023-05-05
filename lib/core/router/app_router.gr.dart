// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WheatherHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WheatherHomeScreen(),
      );
    },
    WeatherDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherDetailsRouteArgs>(
          orElse: () => const WeatherDetailsRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WeatherDetailsScreen(
          key: args.key,
          errorMessage: args.errorMessage,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          WheatherHomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          WeatherDetailsRoute.name,
          path: '/weather-details-screen',
        ),
      ];
}

/// generated route for
/// [WheatherHomeScreen]
class WheatherHomeRoute extends PageRouteInfo<void> {
  const WheatherHomeRoute()
      : super(
          WheatherHomeRoute.name,
          path: '/',
        );

  static const String name = 'WheatherHomeRoute';
}

/// generated route for
/// [WeatherDetailsScreen]
class WeatherDetailsRoute extends PageRouteInfo<WeatherDetailsRouteArgs> {
  WeatherDetailsRoute({
    Key? key,
    String errorMessage = "",
  }) : super(
          WeatherDetailsRoute.name,
          path: '/weather-details-screen',
          args: WeatherDetailsRouteArgs(
            key: key,
            errorMessage: errorMessage,
          ),
        );

  static const String name = 'WeatherDetailsRoute';
}

class WeatherDetailsRouteArgs {
  const WeatherDetailsRouteArgs({
    this.key,
    this.errorMessage = "",
  });

  final Key? key;

  final String errorMessage;

  @override
  String toString() {
    return 'WeatherDetailsRouteArgs{key: $key, errorMessage: $errorMessage}';
  }
}
