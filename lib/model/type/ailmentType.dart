import 'package:ffbe/gen/assets.gen.dart';

enum Ailments {
  poison,
  blind,
  sleep,
  silence,
  paralyze,
  confusion,
  disease,
  petrify,
  death,
  charm,
  stop
}

Ailments getAilmentTypeFrom(int id) {
  return Ailments.values.firstWhere((element) => element.id == id);
}

extension AilmentsExtension on Ailments {
  int get id {
    return this.index + 1;
  }

  String get humanizeText {
    switch (this) {
      case Ailments.poison:
        return "Poison";
      case Ailments.blind:
        return "Blind";
      case Ailments.sleep:
        return "Sleep";
      case Ailments.silence:
        return "Silence";
      case Ailments.paralyze:
        return "Paralyze";
      case Ailments.confusion:
        return "Confusion";
      case Ailments.disease:
        return "Disease";
      case Ailments.petrify:
        return "Petrify";
      case Ailments.death:
        return "Death";
      case Ailments.charm:
        return "Charm";
      case Ailments.stop:
        return "Stop";
    }
  }

  String get image {
    switch (this) {
      case Ailments.poison:
        return Assets.graphics.poison.path;
      case Ailments.blind:
        return Assets.graphics.blind.path;
      case Ailments.sleep:
        return Assets.graphics.sleep.path;
      case Ailments.silence:
        return Assets.graphics.silence.path;
      case Ailments.paralyze:
        return Assets.graphics.paralysis.path;
      case Ailments.confusion:
        return Assets.graphics.confuse.path;
      case Ailments.disease:
        return Assets.graphics.disease.path;
      case Ailments.petrify:
        return Assets.graphics.petrification.path;
      case Ailments.death:
        return Assets.graphics.death.path;
      case Ailments.charm:
        return Assets.graphics.charm.path;
      case Ailments.stop:
        return Assets.graphics.stop.path;
    }
  }
}
