import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/material.dart';

class SettingWidget extends HomeStatelessWidget {
  SettingWidget({Key? key}) : super(key: key, title: "Settings");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title)],
    );
  }
}
