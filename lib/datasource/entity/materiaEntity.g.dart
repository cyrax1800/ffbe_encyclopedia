// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materiaEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MateriaEntity _$MateriaEntityFromJson(Map<String, dynamic> json) =>
    MateriaEntity(
      json['id'] as int,
      json['name'] as String,
      json['icon'] as String,
      json['unique'] as bool,
      json['skills'] as String,
      json['unit_restriction'] as String?,
      json['tmr'] as int?,
      json['sTmr'] as int?,
    );

Map<String, dynamic> _$MateriaEntityToJson(MateriaEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'unique': instance.unique,
      'skills': instance.skills,
      'unit_restriction': instance.restriction,
      'tmr': instance.tmr,
      'sTmr': instance.sTmr,
    };
