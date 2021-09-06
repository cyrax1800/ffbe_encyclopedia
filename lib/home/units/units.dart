import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/cupertino.dart';
import 'dart:developer' as developer;

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
    developer.log("test");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.title)],
    );
  }
}
