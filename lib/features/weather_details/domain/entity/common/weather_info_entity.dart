import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

import 'clouds_entity.dart';
import 'main_info_entity.dart';
import 'rain_entity.dart';
import 'sys_entity.dart';
import 'weather_entity.dart';
import 'wind_entity.dart';

class WeatherInfoEntity extends Equatable {
  final int dt;
  final MainInfoEntity main;
  final List<WeatherEntity> weather;
  final CloudsEntity clouds;
  final WindEntity wind;
  final int visibility;
  final double pop;
  final RainEntity rain;
  final SysEntity sys;
  final String dtTxt;
  const WeatherInfoEntity({
    this.dt = 0,
    this.main = const MainInfoEntity(),
    this.weather = const [],
    this.clouds = const CloudsEntity(),
    this.wind = const WindEntity(),
    this.visibility = 0,
    this.pop = 0,
    this.rain = const RainEntity(),
    this.sys = const SysEntity(),
    this.dtTxt = "",
  });

  WeatherInfoEntity copyWith({
    int? dt,
    MainInfoEntity? main,
    List<WeatherEntity>? weather,
    CloudsEntity? clouds,
    WindEntity? wind,
    int? visibility,
    double? pop,
    RainEntity? rain,
    SysEntity? sys,
    String? dtTxt,
  }) {
    return WeatherInfoEntity(
      dt: dt ?? this.dt,
      main: main ?? this.main,
      weather: weather ?? this.weather,
      clouds: clouds ?? this.clouds,
      wind: wind ?? this.wind,
      visibility: visibility ?? this.visibility,
      pop: pop ?? this.pop,
      rain: rain ?? this.rain,
      sys: sys ?? this.sys,
      dtTxt: dtTxt ?? this.dtTxt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dt': dt,
      'main': main.toMap(),
      'weather': weather.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'clouds': clouds.toMap(),
      'wind': wind.toMap(),
      'visibility': visibility,
      'pop': pop,
      'rain': rain.toMap(),
      'sys': sys.toMap(),
      'dtTxt': dtTxt,
    };
  }

  factory WeatherInfoEntity.fromMap(Map<String, dynamic> map) {
    return WeatherInfoEntity(
      dt: (map["dt"] ?? 0) as int,
      main: MainInfoEntity.fromMap((map["main"] ??
          Map<String, dynamic>.from({})) as Map<String, dynamic>),
      weather: List<WeatherEntity>.from(
        ((map['weather'] ?? const <WeatherEntity>[]) as List)
            .map<WeatherEntity>((x) {
          return WeatherEntity.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      clouds: CloudsEntity.fromMap((map["clouds"] ??
          Map<String, dynamic>.from({})) as Map<String, dynamic>),
      wind: WindEntity.fromMap((map["wind"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
      visibility: (map["visibility"] ?? 0) as int,
      pop: (map["pop"] ?? 0.0) as double,
      rain: RainEntity.fromMap((map["rain"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
      sys: SysEntity.fromMap((map["sys"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
      dtTxt: (map["dtTxt"] ?? '') as String,
    );
  }

  toJson() => toMap();

  factory WeatherInfoEntity.fromJson(String source) =>
      WeatherInfoEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      dt,
      main,
      weather,
      clouds,
      wind,
      visibility,
      pop,
      rain,
      sys,
      dtTxt,
    ];
  }

  get dtParsed => DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  get dtParsedDateText => DateFormat("dd.MM.yyyy").format(dtParsed);
  get dtParsedTimeText => DateFormat("HH:mm").format(dtParsed);
}
