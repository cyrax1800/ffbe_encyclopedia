import 'package:json_annotation/json_annotation.dart';

part 'materiaEntity.g.dart';

@JsonSerializable()
class MateriaEntity {
  MateriaEntity(this.id, this.name, this.icon, this.unique, this.skills,
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

  factory MateriaEntity.fromJson(Map<String, dynamic> json) =>
      _$MateriaEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MateriaEntityToJson(this);
}
