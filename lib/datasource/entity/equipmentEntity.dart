import 'package:json_annotation/json_annotation.dart';

part 'equipmentEntity.g.dart';

@JsonSerializable()
class EquipmentEntity {
  EquipmentEntity(
      this.id,
      this.name,
      this.icon,
      this.rarity,
      this.typeId,
      this.slotId,
      this.isTwoHanded,
      this.accuracy,
      this.stats,
      this.skills,
      this.access,
      this.tmr,
      this.sTmr,
      this.elementInflict,
      this.elementResist,
      this.statusInflict,
      this.statusResist,
      this.requirements);

  final int id;
  final String name;
  final String icon;
  final int rarity;
  final int typeId;
  final int slotId;
  final bool isTwoHanded;
  final int accuracy;
  final String stats;
  final String skills;
  final String access;
  final int? tmr;
  final int? sTmr;

  final String? elementInflict;
  final String? elementResist;
  final String? statusInflict;
  final String? statusResist;
  final String? requirements;

  factory EquipmentEntity.fromJson(Map<String, dynamic> json) =>
      _$EquipmentEntityFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentEntityToJson(this);
}
