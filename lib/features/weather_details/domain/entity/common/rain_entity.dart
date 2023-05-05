import 'dart:convert';

import 'package:equatable/equatable.dart';

class RainEntity extends Equatable {
  final double h;
  const RainEntity({
    this.h = 0,
  });

  RainEntity copyWith({
    double? h,
  }) {
    return RainEntity(
      h: h ?? this.h,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h': h,
    };
  }

  factory RainEntity.fromMap(Map<String, dynamic> map) {
    return RainEntity(
      h: (map["h"] ?? 0.0) as double,
    );
  }

  toJson() => toMap();

  factory RainEntity.fromJson(String source) => RainEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [h];
}
