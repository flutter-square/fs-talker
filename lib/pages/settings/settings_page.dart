import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "settings",
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Text("settings"),
      ),
    );
  }
}