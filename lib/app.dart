import 'package:flutter/material.dart';
import 'package:fs_talker/pages/home/home_page.dart';
import 'package:fs_talker/pages/profile/profile_page.dart';
import 'package:fs_talker/pages/settings/settings_page.dart';

import 'constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  final _pages = [
    Home(),
    Profile(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: _pages,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Styles.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      )
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
