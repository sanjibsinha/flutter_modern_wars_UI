import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/views/testapp_about.dart';
import 'package:flutter_modern_wars_UI/views/testapp_home.dart';

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/about': (BuildContext context) => AboutPage(),
      },
    );
  }
}