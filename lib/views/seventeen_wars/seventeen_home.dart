import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/models/seventeen_hundred_wars.dart';
import 'seventeen_first.dart';

class SeventeenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to About All Wars Page'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'Seventeen Hundred Home',
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
                      MaterialPageRoute(builder: (context) => SeventeenFirst()),
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
