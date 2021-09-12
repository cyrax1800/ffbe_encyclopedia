
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onTextChanged;
  final String searchText;

  SearchBarWidget(
      {Key? key,
      this.searchText = "",
      required this.hintText,
      this.onTextChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  String _text = "";

  @override
  void initState() {
    super.initState();
    _controller.text = widget.searchText;
    _text = widget.searchText;
    _controller.addListener(() {
      setState(() {
        _text = _controller.text;
      });
    });
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
              suffixIcon: _text.isNotEmpty
                  ? IconButton(
                      iconSize: 24,
                      padding: EdgeInsets.all(4.0),
                      icon: Icon(
                        Icons.clear,
                      ),
                      onPressed: onClearIconPressed)
                  : null,
            ),
            onChanged: widget.onTextChanged));
  }
}
