import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/material.dart';

class UnitsWidget extends HomeStatefulWidget {
  UnitsWidget({Key? key}) : super(key: key, title: "Units");

  @override
  State<StatefulWidget> createState() {
    return _EncyclopediaScreenState();
  }
}

class _EncyclopediaScreenState extends State<UnitsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.title)],
    );
  }
}
