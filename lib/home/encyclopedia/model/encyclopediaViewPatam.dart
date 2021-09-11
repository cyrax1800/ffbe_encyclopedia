import 'package:ffbe/home/encyclopedia/model/wrappedTypeWithValueParam.dart';
import 'package:ffbe/model/type/ailmentType.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/model/type/race.dart';

class EncyclopediaViewParam {
  final int id;
  final String iconUrl;
  final String name;
  final int type;
  final int rarity;
  final bool isTwoHanded;
  final bool isNonStackable;
  final Stats stats;
  final Stats additionalStats;
  final List<WrappedTypeWithValueParam<ElementType>> elementInflict;
  final List<WrappedTypeWithValueParam<ElementType>> elementResistance;
  final List<WrappedTypeWithValueParam<Ailments>> ailmentInflict;
  final List<WrappedTypeWithValueParam<Ailments>> ailmentResistance;
  final List<WrappedTypeWithValueParam<Race>> physicalKiller;
  final List<WrappedTypeWithValueParam<Race>> magicalKiller;
  final List<String> description;

  EncyclopediaViewParam(
      {required this.id,
      required this.iconUrl,
      required this.name,
      required this.type,
      required this.rarity,
      required this.isTwoHanded,
      required this.isNonStackable,
      required this.stats,
      required this.additionalStats,
      required this.elementInflict,
      required this.elementResistance,
      required this.ailmentInflict,
      required this.ailmentResistance,
      required this.physicalKiller,
      required this.magicalKiller,
      required this.description});
}

class Stats {
  final int atk;
  final int def;
  final int mag;
  final int spr;
  final int hp;
  final int mp;

  Stats(
      {required this.atk,
      required this.def,
      required this.mag,
      required this.spr,
      required this.hp,
      required this.mp});
}

extension StatsExtension on Stats {
  String formatString({String suffix = ""}) {
    List<String> list = [];
    if (hp != 0) {
      list.add("HP +$hp$suffix");
    }
    if (mp != 0) {
      list.add("MP +$mp$suffix");
    }
    if (atk != 0) {
      list.add("ATK +$atk$suffix");
    }
    if (mag != 0) {
      list.add("MAG +$mag$suffix");
    }
    if (def != 0) {
      list.add("DEF +$spr$suffix");
    }
    if (spr != 0) {
      list.add("SPR +$spr$suffix");
    }
    return list.join(", ");
  }
}
