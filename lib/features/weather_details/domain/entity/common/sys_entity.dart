import 'dart:convert';

import 'package:equatable/equatable.dart';

class SysEntity extends Equatable {
  final String pod;
  const SysEntity({
    this.pod = "",
  });

  SysEntity copyWith({
    String? pod,
  }) {
    return SysEntity(
      pod: pod ?? this.pod,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pod': pod,
    };
  }

  factory SysEntity.fromMap(Map<String, dynamic> map) {
    return SysEntity(
      pod: (map["pod"] ?? '') as String,
    );
  }

  toJson() => toMap();

  factory SysEntity.fromJson(String source) => SysEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pod];
}
