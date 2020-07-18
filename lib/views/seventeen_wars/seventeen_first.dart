import 'package:flutter/material.dart';
import 'package:flutter_modern_wars_UI/models/seventeen_hundred_wars.dart';
import 'package:flutter_modern_wars_UI/models/weapon_used.dart';
import 'package:flutter_modern_wars_UI/views/home_page.dart';
import 'seventeen_home.dart';

class SeventeenFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeventeenHome()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(32.00),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(32.00),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.00),
          Container(
            height: 300.00,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: seventeenHundredWars.length,
              itemBuilder: (BuildContext context, int index) {
                SeventeenHundredWars seventeenFirstWar = seventeenHundredWars[index];
                return Container(
                  margin: const EdgeInsets.all(10.00),
                  width: 200.00,
                  child: Column(

                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


