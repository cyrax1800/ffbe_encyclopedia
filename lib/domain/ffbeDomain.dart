import 'package:ffbe/datasource/ffbeDataSource.dart';
import 'package:ffbe/home/encyclopedia/model/encyclopediaViewPatam.dart';
import 'package:ffbe/home/encyclopedia/model/wrappedTypeWithValueParam.dart';
import 'package:ffbe/model/type/ailmentType.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/utils/iterable.dart';

class FFBEDomain {
  final ffbeDatasource = FFBEDataSource();
  final imageUrl = "https://ffbeequip.com/img/items/";

  Future<List<EncyclopediaViewParam>> getEquipment(String keyword) async {
    return ffbeDatasource.getEquipment().then((value) => value
        .map((e) {
          var statsArr = e.stats.split(",").map((e) => int.parse(e)).toList();
          var _elementInflict = e.elementInflict?.split(",").mapIndexedNotNull((index, value) {
                int elementValue = int.parse(value);
                if (elementValue == 0) {
                  return null;
                } else {
                  var elementType = getElementTypeFrom(index + 1);
                  return WrappedTypeWithValueParam(elementType, 100);
                }
              }).toList() ??
              [];
          var _elementResistance = e.elementResist?.split(",").mapIndexedNotNull((index, value) {
                int elementValue = int.parse(value);
                if (elementValue == 0) {
                  return null;
                } else {
                  var elementType = getElementTypeFrom(index + 1);
                  return WrappedTypeWithValueParam(elementType, elementValue);
                }
              }).toList() ??
              [];
          var _ailmentInflict = e.statusInflict?.split(",").mapIndexedNotNull((index, value) {
                int ailmentValue = int.parse(value);
                if (ailmentValue == 0) {
                  return null;
                } else {
                  var ailmentType = getAilmentTypeFrom(index + 1);
                  return WrappedTypeWithValueParam(ailmentType, ailmentValue);
                }
              }).toList() ??
              [];
          var _ailmentResistance = e.statusResist?.split(",").mapIndexedNotNull((index, value) {
                int ailmentValue = int.parse(value);
                if (ailmentValue == 0) {
                  return null;
                } else {
                  var ailmentType = getAilmentTypeFrom(index + 1);
                  return WrappedTypeWithValueParam(ailmentType, ailmentValue);
                }
              }).toList() ??
              [];
          return EncyclopediaViewParam(
              id: e.id,
              iconUrl: imageUrl + e.icon,
              name: e.name,
              type: e.typeId,
              rarity: e.rarity,
              isTwoHanded: e.isTwoHanded,
              isNonStackable: false,
              stats: Stats(
                atk: statsArr[0],
                def: statsArr[1],
                mag: statsArr[2],
                spr: statsArr[3],
                hp: statsArr[4],
                mp: statsArr[5],
              ),
              additionalStats: Stats(),
              elementInflict: _elementInflict,
              elementResistance: _elementResistance,
              ailmentInflict: _ailmentInflict,
              ailmentResistance: _ailmentResistance,
              physicalKiller: [],
              magicalKiller: [],
              description: []);
        })
        .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
        .toList());
  }

  Future<List<EncyclopediaViewParam>> getMateria(String keyword) async {
    return ffbeDatasource.getMaterial().then((value) => value
        .map((e) => EncyclopediaViewParam(
            id: e.id,
            iconUrl: imageUrl + e.icon,
            name: e.name,
            type: -1,
            rarity: 0,
            isTwoHanded: false,
            isNonStackable: e.unique,
            stats: Stats(),
            additionalStats: Stats(),
            elementInflict: [],
            elementResistance: [],
            ailmentInflict: [],
            ailmentResistance: [],
            physicalKiller: [],
            magicalKiller: [],
            description: []))
        .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
        .toList());
  }
}
