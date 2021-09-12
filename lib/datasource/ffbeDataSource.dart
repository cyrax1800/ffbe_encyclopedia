import 'dart:convert';

import 'package:ffbe/datasource/entity/equipmentEntity.dart';
import 'package:ffbe/datasource/entity/materiaEntity.dart';
import 'package:ffbe/gen/assets.gen.dart';
import 'package:flutter/services.dart' show rootBundle;

class FFBEDataSource {

  Future<List<EquipmentEntity>> getEquipment() async {
    return rootBundle.loadString(Assets.data.parsedEquipment).then((value) =>
    List<EquipmentEntity>.from(
        json.decode(value).map((x) => EquipmentEntity.fromJson(x))));
  }

  Future<List<MateriaEntity>> getMaterial() async {
    return rootBundle.loadString(Assets.data.parsedMateria).then((value) =>
        List<MateriaEntity>.from(
            json.decode(value).map((x) => MateriaEntity.fromJson(x))));
  }
}
