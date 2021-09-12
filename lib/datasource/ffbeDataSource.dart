import 'dart:convert';

import 'package:ffbe/datasource/entity/equipmentEntity.dart';
import 'package:ffbe/datasource/entity/materialEntity.dart';
import 'package:ffbe/gen/assets.gen.dart';
import 'package:flutter/services.dart' show rootBundle;

class FFBEDataSource {

  Future<List<EquipmentEntity>> getEquipment() async {
    return rootBundle.loadString(Assets.data.parsedEquipment).then((value) =>
    List<EquipmentEntity>.from(
        json.decode(value).map((x) => EquipmentEntity.fromJson(x))));
  }

  Future<List<MaterialEntity>> getMaterial() async {
    return rootBundle.loadString(Assets.data.parsedMateria).then((value) =>
        List<MaterialEntity>.from(
            json.decode(value).map((x) => MaterialEntity.fromJson(x))));
  }
}
