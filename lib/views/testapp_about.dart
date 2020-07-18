import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/controllers/testapp_routes.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestApp()),
          );
        },
        child: Text(
          ' Back to Home Page',
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
