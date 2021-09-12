import 'package:ffbe/home/encyclopedia/controller/encyclopediaController.dart';
import 'package:ffbe/home/encyclopedia/model/tuneSetting.dart';
import 'package:ffbe/home/encyclopedia/tuneSettingWidget.dart';
import 'package:ffbe/home/encyclopedia/widget/itemEncyclopedia.dart';
import 'package:ffbe/home/homestateleswidget.dart';
import 'package:ffbe/widget/bottomsheet.dart';
import 'package:ffbe/widget/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

class EncyclopediaWidget extends HomeStatelessWidget {
  EncyclopediaWidget({Key? key}) : super(key: key, title: "Encyclopedia");

  final encyclopediaController = Get.put(EncyclopediaController());

  final keywordDebounce = Debouncer(delay: Duration(milliseconds: 200));

  void onTuneSettingPressed(BuildContext context) async {
    TuneSetting? result = await showDraggableBottomSheet<TuneSetting>(
        context: context,
        peekHeight: PeekHeight.wrap,
        child: TuneSettingWidget(tuneSetting: encyclopediaController.tuneSetting));

    if (result != null) {
      encyclopediaController.updateSetting(result);
    }
  }

  void onFilterListPressed() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 20.0),
          child: Row(
            children: [
              SearchBarWidget(
                  hintText: "Enter search text",
                  onTextChanged: (value) {
                    keywordDebounce.call(() {
                      encyclopediaController.updateKeyword(value);
                    });
                  }),
              IconButton(icon: Icon(Icons.tune), onPressed: () => {onTuneSettingPressed(context)}),
              IconButton(icon: Icon(Icons.filter_list), onPressed: onFilterListPressed),
            ],
          ),
        ),
        Obx(() => Expanded(
              child: ListView.builder(
                  itemCount: encyclopediaController.itemList.length,
                  itemBuilder: (context, index) =>
                      ItemEncyclopedia(encyclopediaViewParam: encyclopediaController.itemList[index])),
            ))
      ],
    );
  }
}
