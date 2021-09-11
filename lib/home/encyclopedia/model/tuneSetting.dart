import 'package:ffbe/model/type/ailmentType.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/model/type/equipmentType.dart';
import 'package:ffbe/model/type/race.dart';

class TuneSetting {
  final selectedEquipmentType =
      List<bool>.filled(EquipmentType.values.length, false);
  final selectedElementAttack =
      List<bool>.filled(ElementType.values.length, false);
  final selectedElementResistance =
      List<bool>.filled(ElementType.values.length, false);
  final selectedAilmentsInflict =
      List<bool>.filled(Ailments.values.length, false);
  final selectedAilmentsResistance =
      List<bool>.filled(Ailments.values.length, false);
  final selectedPhysicalKiller =
      List<bool>.filled(Race.values.length, false);
  final selectedMagicalKiller =
      List<bool>.filled(Race.values.length, false);
}
