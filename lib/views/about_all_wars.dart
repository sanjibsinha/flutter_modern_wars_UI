import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/views/seventeen_wars/seventeen_home.dart';

class AboutAllWars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to Home Page'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'From 1700 to 1900, Twelve Major Wars Devastated the World! It killed '
                  'more than 500 million people!',
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20.00,),
            Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeventeenHome()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
