import 'package:flutter/material.dart';

class ToggleImageButton extends StatefulWidget {
  final String imagePath;
  final bool _isSelected;
  final VoidCallback callback;

  ToggleImageButton(
      {required this.imagePath,
      required this.callback,
      bool isSelected = false})
      : _isSelected = isSelected;

  @override
  State<StatefulWidget> createState() => _ToggleImageButton();
}

class _ToggleImageButton extends State<ToggleImageButton> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget._isSelected;
    super.initState();
  }

  void onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _isSelected ? Theme.of(context).primaryColor : Colors.white,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
            padding: EdgeInsets.all(2),
            child: Image.asset(widget.imagePath, width: 28, height: 28)),
      ),
    );
  }
}
