import 'package:ffbe/gen/assets.gen.dart';

enum Race {
  beast,
  avian,
  aquan,
  demon,
  human,
  machine,
  dragon,
  fairy,
  insect,
  stone,
  plant,
  reaper
}

Race getRaceTypeFrom(int id) {
  return Race.values.firstWhere((element) => element.id == id);
}

extension RaceExtension on Race {
  int get id {
    return this.index + 1;
  }

  String get physicalKillerImage {
    switch (this) {
      case Race.beast:
        return Assets.graphics.physicalBeast.path;
      case Race.avian:
        return Assets.graphics.physicalBird.path;
      case Race.aquan:
        return Assets.graphics.physicalAquatic.path;
      case Race.demon:
        return Assets.graphics.physicalDemon.path;
      case Race.human:
        return Assets.graphics.physicalHuman.path;
      case Race.machine:
        return Assets.graphics.physicalMachine.path;
      case Race.dragon:
        return Assets.graphics.physicalDragon.path;
      case Race.fairy:
        return Assets.graphics.physicalSpirit.path;
      case Race.insect:
        return Assets.graphics.physicalBug.path;
      case Race.stone:
        return Assets.graphics.physicalStone.path;
      case Race.plant:
        return Assets.graphics.physicalPlant.path;
      case Race.reaper:
        return Assets.graphics.physicalUndead.path;
    }
  }

  String get magicalKillerImage {
    switch (this) {
      case Race.beast:
        return Assets.graphics.magicalBeast.path;
      case Race.avian:
        return Assets.graphics.magicalBird.path;
      case Race.aquan:
        return Assets.graphics.magicalAquatic.path;
      case Race.demon:
        return Assets.graphics.magicalDemon.path;
      case Race.human:
        return Assets.graphics.magicalHuman.path;
      case Race.machine:
        return Assets.graphics.magicalMachine.path;
      case Race.dragon:
        return Assets.graphics.magicalDragon.path;
      case Race.fairy:
        return Assets.graphics.magicalSpirit.path;
      case Race.insect:
        return Assets.graphics.magicalBug.path;
      case Race.stone:
        return Assets.graphics.magicalStone.path;
      case Race.plant:
        return Assets.graphics.magicalPlant.path;
      case Race.reaper:
        return Assets.graphics.magicalUndead.path;
    }
  }
}

