import 'dart:convert';

import 'package:equatable/equatable.dart';

class CloudsEntity extends Equatable {
  final int all;
  const CloudsEntity({
    this.all = 0,
  });

  CloudsEntity copyWith({
    int? all,
  }) {
    return CloudsEntity(
      all: all ?? this.all,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
    };
  }

  factory CloudsEntity.fromMap(Map<String, dynamic> map) {
    return CloudsEntity(
      all: (map["all"] ?? 0) as int,
    );
  }

  toJson() => toMap();

  factory CloudsEntity.fromJson(String source) => CloudsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [all];
}
