import 'package:flutter/material.dart';

abstract class HomeStatefulWidget extends StatefulWidget {
  final String title;

  const HomeStatefulWidget({Key? key, required this.title}) : super(key: key);
}