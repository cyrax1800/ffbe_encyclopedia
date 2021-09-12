// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipmentEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentEntity _$EquipmentEntityFromJson(Map<String, dynamic> json) =>
    EquipmentEntity(
      json['id'] as int,
      json['name'] as String,
      json['icon'] as String,
      json['rarity'] as int,
      json['typeId'] as int,
      json['slotId'] as int,
      json['isTwoHanded'] as bool,
      json['accuracy'] as int,
      json['stats'] as String,
      json['skills'] as String,
      json['access'] as String,
      json['tmr'] as int?,
      json['sTmr'] as int?,
      json['elementInflict'] as String?,
      json['elementResist'] as String?,
      json['statusInflict'] as String?,
      json['statusResist'] as String?,
      json['requirements'] as String?,
    );

Map<String, dynamic> _$EquipmentEntityToJson(EquipmentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'rarity': instance.rarity,
      'typeId': instance.typeId,
      'slotId': instance.slotId,
      'isTwoHanded': instance.isTwoHanded,
      'accuracy': instance.accuracy,
      'stats': instance.stats,
      'skills': instance.skills,
      'access': instance.access,
      'tmr': instance.tmr,
      'sTmr': instance.sTmr,
      'elementInflict': instance.elementInflict,
      'elementResist': instance.elementResist,
      'statusInflict': instance.statusInflict,
      'statusResist': instance.statusResist,
      'requirements': instance.requirements,
    };
