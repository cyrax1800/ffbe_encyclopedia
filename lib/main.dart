
import 'package:ffbe/gen/assets.gen.dart';
import 'package:ffbe/home/homestateleswidget.dart';
import 'package:flutter/material.dart';

import 'home/encyclopedia/encyclopedia.dart';
import 'home/settings/settings.dart';
import 'home/units/units.dart';

void main() {
  runApp(FFBEApp());
}

class FFBEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  int _currentIndex = 0;
  String _title = "";

  final List<HomeStatelessWidget> _children = [
    EncyclopediaWidget(),
    UnitsWidget(),
    SettingWidget()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(_currentIndex);
      _title = _children[_currentIndex].title;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _title = _children[_currentIndex].title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(Assets.graphics.equipments.path,
                width: 24, height: 24),
            label: 'Encyclopedia',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.graphics.unitsStars.path,
                width: 24, height: 24),
            label: 'Units',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
