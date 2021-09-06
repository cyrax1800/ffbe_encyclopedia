import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SearchBarWidget extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onTextChanged;
  String _searchText = "";

  SearchBarWidget(
      {Key? key,
      String? searchText,
      required this.hintText,
      this.onTextChanged})
      : _searchText = searchText ?? "",
        super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget._searchText;
  }

  void onClearIconPressed() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.hintText,
              prefixIcon: Icon(Icons.search, size: 20),
              suffixIcon: IconButton(
                  iconSize: 24,
                  padding: EdgeInsets.all(4.0),
                  icon: Icon(
                    Icons.clear,
                  ),
                  onPressed: onClearIconPressed),
            ),
            onChanged: widget.onTextChanged));
  }
}
