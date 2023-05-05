import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/common/sys_entity.dart';
part 'sys_model.g.dart';

@JsonSerializable()
class SysModel extends SysEntity {
  const SysModel({
    super.pod = "",
  });

   factory SysModel.fromJson(Map<String, dynamic> json) =>
      _$SysModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SysModelToJson(this);
}



