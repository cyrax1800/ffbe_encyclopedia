import 'package:ffbe/model/type/ailmentType.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/model/type/equipmentType.dart';
import 'package:ffbe/model/type/race.dart';
import 'package:ffbe/widget/toogleImageButton.dart';
import 'package:flutter/material.dart';

import 'model/tuneSetting.dart';

class TuneSettingWidget extends StatefulWidget {
  final TuneSetting _tuneSetting;

  TuneSettingWidget({required TuneSetting tuneSetting})
      : _tuneSetting = tuneSetting;

  @override
  State<StatefulWidget> createState() => _TuneSettingWidget();
}

class _TuneSettingWidget extends State<TuneSettingWidget> {
  TuneSetting _tuneSetting = TuneSetting();

  @override
  void initState() {
    super.initState();
    _tuneSetting = widget._tuneSetting;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int gridAxis = (screenWidth - 40) ~/ 32;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 4.0),
            child: Text("Item Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...EquipmentType.values
                    .take(EquipmentType.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.image,
                          isSelected:
                              _tuneSetting.selectedEquipmentType[e.index],
                          callback: () => {
                            _tuneSetting.selectedEquipmentType[e.index] =
                                !_tuneSetting.selectedEquipmentType[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Element Attack",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...ElementType.values
                    .take(ElementType.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.image,
                          isSelected:
                              _tuneSetting.selectedElementAttack[e.index],
                          callback: () => {
                            _tuneSetting.selectedElementAttack[e.index] =
                                !_tuneSetting.selectedElementAttack[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Element Resistance",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...ElementType.values
                    .take(ElementType.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.image,
                          isSelected:
                              _tuneSetting.selectedElementResistance[e.index],
                          callback: () => {
                            _tuneSetting.selectedElementResistance[e.index] =
                                !_tuneSetting.selectedElementResistance[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Ailment Inflict",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...Ailments.values
                    .take(Ailments.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.image,
                          isSelected:
                              _tuneSetting.selectedAilmentsInflict[e.index],
                          callback: () => {
                            _tuneSetting.selectedAilmentsInflict[e.index] =
                                !_tuneSetting.selectedAilmentsInflict[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Ailment Resistance",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...Ailments.values
                    .take(Ailments.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.image,
                          isSelected:
                              _tuneSetting.selectedAilmentsResistance[e.index],
                          callback: () => {
                            _tuneSetting.selectedAilmentsResistance[e.index] =
                                !_tuneSetting
                                    .selectedAilmentsResistance[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Physical Killers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...Race.values
                    .take(Race.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.physicalKillerImage,
                          isSelected:
                              _tuneSetting.selectedPhysicalKiller[e.index],
                          callback: () => {
                            _tuneSetting.selectedPhysicalKiller[e.index] =
                                !_tuneSetting.selectedPhysicalKiller[e.index]
                          },
                        ))
              ]),
          Container(
            margin: EdgeInsets.only(bottom: 4.0, top: 12.0),
            child: Text("Magical Killers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          GridView.count(
              crossAxisCount: gridAxis,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...Race.values
                    .take(Race.values.length)
                    .map((e) => ToggleImageButton(
                          imagePath: e.magicalKillerImage,
                          isSelected:
                              _tuneSetting.selectedMagicalKiller[e.index],
                          callback: () => {
                            _tuneSetting.selectedMagicalKiller[e.index] =
                                !_tuneSetting.selectedMagicalKiller[e.index]
                          },
                        ))
              ]),
          Container(
              margin: EdgeInsets.symmetric(vertical: 12.0),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => {Navigator.pop(context, _tuneSetting)},
                  child: Text("Apply")))
        ],
      ),
    );
  }
}
