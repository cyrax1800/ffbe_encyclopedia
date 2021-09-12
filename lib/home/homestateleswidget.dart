import 'package:flutter/material.dart';

abstract class HomeStatelessWidget extends StatelessWidget {
  final String title;

  const HomeStatelessWidget({Key? key, required this.title}) : super(key: key);
}