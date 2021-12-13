import 'package:flutter/material.dart';
import 'package:fs_talker/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final AppBar appBar = AppBar();

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      title: Text(
        this.title,
        style: TextStyle(
          color: Styles.blackLabelColor
        ),
      ),
      centerTitle: true,
      backgroundColor: Styles.backgroundAppBarColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

