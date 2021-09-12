import 'package:json_annotation/json_annotation.dart';

part 'materialEntity.g.dart';

@JsonSerializable()
class MaterialEntity {
  MaterialEntity(this.id, this.name, this.icon, this.unique, this.skills,
      this.restriction, this.tmr, this.sTmr);

  final int id;
  final String name;
  final String icon;
  final bool unique;
  final String skills;
  @JsonKey(name: 'unit_restriction')
  final String? restriction;
  final int? tmr;
  final int? sTmr;

  factory MaterialEntity.fromJson(Map<String, dynamic> json) =>
      _$MaterialEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialEntityToJson(this);
}
