import 'package:ffbe/datasource/ffbeDataSource.dart';
import 'package:ffbe/home/encyclopedia/model/encyclopediaViewPatam.dart';

class FFBEDomain {
  final ffbeDatasource = FFBEDataSource();
  final imageUrl = "https://ffbeequip.com/img/items/";

  List<EncyclopediaViewParam> getEquipment() {
    return [];
  }

  Future<List<EncyclopediaViewParam>> getMateria() async {
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
        .toList());
  }
}
