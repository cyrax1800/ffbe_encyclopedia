import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/cupertino.dart';

class SettingWidget extends HomeStatefulWidget {
  SettingWidget({Key? key}) : super(key: key, title: "Settings");

  @override
  State<StatefulWidget> createState() {
    return _EncyclopediaScreenState();
  }
}

class _EncyclopediaScreenState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.title)],
    );
  }
}
