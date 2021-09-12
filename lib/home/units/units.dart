import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/material.dart';

class UnitsWidget extends HomeStatelessWidget {
  UnitsWidget({Key? key}) : super(key: key, title: "Units");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title)],
    );
  }
}
