import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/views/testapp_about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()),
          );
        },
        child: Text(
          'Go to About Page',
          style: TextStyle(
            fontFamily: 'Trajan Pro',
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
