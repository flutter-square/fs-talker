import 'package:flutter/material.dart';
import 'package:fs_talker/app.dart';
import 'package:fs_talker/pages/talk/talk_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fs-talker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => App(),
        '/talk': (context) => Talk(),
      },
    );
  }
}
