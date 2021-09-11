import 'package:ffbe/gen/assets.gen.dart';

enum ElementType {
  fire,
  ice,
  lightning,
  water,
  wind,
  earth,
  light,
  dark,
  no_element
}

ElementType getElementTypeFrom(int id) {
  return ElementType.values.firstWhere((element) => element.id == id,
      orElse: () => ElementType.no_element);
}

extension ElementExtension on ElementType {
  int get id {
    return this.index + 1;
  }

  String get humanizeText {
    switch (this) {
      case ElementType.fire:
        return "Fire";
      case ElementType.ice:
        return "Ice";
      case ElementType.lightning:
        return "Lightning";
      case ElementType.water:
        return "Water";
      case ElementType.wind:
        return "Wind";
      case ElementType.earth:
        return "Earth";
      case ElementType.light:
        return "Light";
      case ElementType.dark:
        return "Dark";
      case ElementType.no_element:
        return "No Element";
    }
  }

  String get image {
    switch (this) {
      case ElementType.fire:
        return Assets.graphics.fire.path;
      case ElementType.ice:
        return Assets.graphics.ice.path;
      case ElementType.lightning:
        return Assets.graphics.lightning.path;
      case ElementType.water:
        return Assets.graphics.water.path;
      case ElementType.wind:
        return Assets.graphics.wind.path;
      case ElementType.earth:
        return Assets.graphics.earth.path;
      case ElementType.light:
        return Assets.graphics.light.path;
      case ElementType.dark:
        return Assets.graphics.dark.path;
      case ElementType.no_element:
        return Assets.graphics.noElement.path;
    }
  }
}
