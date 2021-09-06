import 'package:ffbe/home/homestateleswidget.dart';
import 'package:ffbe/widget/searchWidget.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class EncyclopediaWidget extends HomeStatefulWidget {
  EncyclopediaWidget({Key? key}) : super(key: key, title: "Encyclopedia");

  @override
  State<StatefulWidget> createState() {
    return _EncyclopediaScreenState();
  }
}

class _EncyclopediaScreenState extends State<EncyclopediaWidget>
    with AutomaticKeepAliveClientMixin {

  void onTuneSettingPressed() {}

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
                  hintText: "Enter search text",
                  onTextChanged: (value) {
                  }),
              IconButton(
                  icon: Icon(Icons.tune), onPressed: onTuneSettingPressed),
              IconButton(
                  icon: Icon(Icons.filter_list), onPressed: onFilterListPressed)
            ],
          ),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
