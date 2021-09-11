import 'package:ffbe/gen/assets.gen.dart';

enum EquipmentType {
  DAGGER,
  SWORD,
  GREAT_SWORD,
  KATANA,
  STAFF,
  ROD,
  BOW,
  AXE,
  HAMMER,
  SPEAR,
  HARP,
  WHIP,
  THROWING,
  GUN,
  MACE,
  FIST,
  LIGHT_SHIELD,
  HEAVY_SHIELD,
  HAT,
  HELM,
  CLOTHES,
  LIGHT_ARMOR,
  HEAVY_ARMOR,
  ROBE,
  ACCESSORY,
  UNDEFINED
}

EquipmentType getEquipmentType(int id) {
  return EquipmentType.values.firstWhere((element) => element.id == id,
      orElse: () => EquipmentType.UNDEFINED);
}

extension EquipmentTypeExtension on EquipmentType {
  int get id {
    switch (this) {
      case EquipmentType.DAGGER:
        return 1;
      case EquipmentType.SWORD:
        return 2;
      case EquipmentType.GREAT_SWORD:
        return 3;
      case EquipmentType.KATANA:
        return 4;
      case EquipmentType.STAFF:
        return 5;
      case EquipmentType.ROD:
        return 6;
      case EquipmentType.BOW:
        return 7;
      case EquipmentType.AXE:
        return 8;
      case EquipmentType.HAMMER:
        return 9;
      case EquipmentType.SPEAR:
        return 10;
      case EquipmentType.HARP:
        return 11;
      case EquipmentType.WHIP:
        return 12;
      case EquipmentType.THROWING:
        return 13;
      case EquipmentType.GUN:
        return 14;
      case EquipmentType.MACE:
        return 15;
      case EquipmentType.FIST:
        return 16;
      case EquipmentType.LIGHT_SHIELD:
        return 30;
      case EquipmentType.HEAVY_SHIELD:
        return 31;
      case EquipmentType.HAT:
        return 40;
      case EquipmentType.HELM:
        return 41;
      case EquipmentType.CLOTHES:
        return 50;
      case EquipmentType.LIGHT_ARMOR:
        return 51;
      case EquipmentType.HEAVY_ARMOR:
        return 52;
      case EquipmentType.ROBE:
        return 53;
      case EquipmentType.ACCESSORY:
        return 60;
      default:
        return -1;
    }
  }

  String get image {
    switch (this) {
      case EquipmentType.DAGGER:
        return Assets.graphics.dagger.path;
      case EquipmentType.SWORD:
        return Assets.graphics.sword.path;
      case EquipmentType.GREAT_SWORD:
        return Assets.graphics.greatSword.path;
      case EquipmentType.KATANA:
        return Assets.graphics.katana.path;
      case EquipmentType.STAFF:
        return Assets.graphics.staff.path;
      case EquipmentType.ROD:
        return Assets.graphics.rod.path;
      case EquipmentType.BOW:
        return Assets.graphics.bow.path;
      case EquipmentType.AXE:
        return Assets.graphics.axe.path;
      case EquipmentType.HAMMER:
        return Assets.graphics.hammer.path;
      case EquipmentType.SPEAR:
        return Assets.graphics.spear.path;
      case EquipmentType.HARP:
        return Assets.graphics.harp.path;
      case EquipmentType.WHIP:
        return Assets.graphics.whip.path;
      case EquipmentType.THROWING:
        return Assets.graphics.throwing.path;
      case EquipmentType.GUN:
        return Assets.graphics.gun.path;
      case EquipmentType.MACE:
        return Assets.graphics.mace.path;
      case EquipmentType.FIST:
        return Assets.graphics.fist.path;
      case EquipmentType.LIGHT_SHIELD:
        return Assets.graphics.lightShield.path;
      case EquipmentType.HEAVY_SHIELD:
        return Assets.graphics.heavyShield.path;
      case EquipmentType.HAT:
        return Assets.graphics.hat.path;
      case EquipmentType.HELM:
        return Assets.graphics.helm.path;
      case EquipmentType.CLOTHES:
        return Assets.graphics.clothes.path;
      case EquipmentType.LIGHT_ARMOR:
        return Assets.graphics.lightArmor.path;
      case EquipmentType.HEAVY_ARMOR:
        return Assets.graphics.heavyArmor.path;
      case EquipmentType.ROBE:
        return Assets.graphics.robe.path;
      case EquipmentType.ACCESSORY:
        return Assets.graphics.accessory.path;
      default:
        return Assets.graphics.materia.path;
    }
  }
}
