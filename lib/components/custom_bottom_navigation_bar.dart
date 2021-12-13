import 'package:flutter/material.dart';
import 'package:fs_talker/constants.dart';
import 'package:fs_talker/pages/home/home_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {

  late final currentIndex;

  CustomBottomNavigationBar({required this.currentIndex});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int tabIndex;

  @override
  void initState() {
    setState(() {
      this.tabIndex = widget.currentIndex;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Styles.primaryColor,
      currentIndex: tabIndex,
      items: <BottomNavigationBarItem>[
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
    );
  }

}
