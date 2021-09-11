import 'package:ffbe/home/encyclopedia/model/tuneSetting.dart';
import 'package:ffbe/home/encyclopedia/model/wrappedTypeWithValueParam.dart';
import 'package:ffbe/home/encyclopedia/tuneSettingWidget.dart';
import 'package:ffbe/home/encyclopedia/widget/itemEncyclopedia.dart';
import 'package:ffbe/home/homestateleswidget.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/model/type/race.dart';
import 'package:ffbe/widget/bottomsheet.dart';
import 'package:ffbe/widget/searchWidget.dart';
import 'package:flutter/material.dart';

import 'model/encyclopediaViewPatam.dart';

class EncyclopediaWidget extends HomeStatefulWidget {
  EncyclopediaWidget({Key? key}) : super(key: key, title: "Encyclopedia");

  @override
  State<StatefulWidget> createState() {
    return _EncyclopediaScreenState();
  }
}

class _EncyclopediaScreenState extends State<EncyclopediaWidget>
    with AutomaticKeepAliveClientMixin {
  TuneSetting _tuneSetting = TuneSetting();

  void onTuneSettingPressed(BuildContext context) async {
    TuneSetting? result = await showDraggableBottomSheet<TuneSetting>(
        context: context,
        peekHeight: PeekHeight.wrap,
        child: TuneSettingWidget(tuneSetting: _tuneSetting));

    if (result != null) {
      _tuneSetting = result;
    }
  }

  void onFilterListPressed() {}

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 20.0),
          child: Row(
            children: [
              SearchBarWidget(
                  hintText: "Enter search text", onTextChanged: (value) {}),
              IconButton(
                  icon: Icon(Icons.tune),
                  onPressed: () => {onTuneSettingPressed(context)}),
              IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: onFilterListPressed),
            ],
          ),
        ),
        ItemEncyclopedia(
          encyclopediaViewParam: EncyclopediaViewParam(
              id: 1,
              iconUrl: "https://ffbeequip.com/img/items/ability_21.png",
              name: "Test",
              type: 1,
              rarity: 2,
              isTwoHanded: false,
              isNonStackable: false,
              stats: Stats(atk: 0, mag: 0, def: 0, hp: 0, spr: 0, mp: 0),
              additionalStats:
                  Stats(atk: 0, mag: 0, def: 0, hp: 0, spr: 0, mp: 0),
              elementInflict: [
                WrappedTypeWithValueParam(ElementType.fire, 100),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
                WrappedTypeWithValueParam(ElementType.dark, -20),
              ],
              elementResistance: [],
              ailmentInflict: [],
              ailmentResistance: [],
              physicalKiller: [
                WrappedTypeWithValueParam(Race.beast, 20),
              ],
              magicalKiller: [],
              description: []),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
