import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modern_wars_UI/controllers/cyber_controller.dart';
import 'package:flutter_modern_wars_UI/controllers/exclusive_weapon_controller.dart';
import 'package:flutter_modern_wars_UI/controllers/top_battle_controller.dart';
import 'package:flutter_modern_wars_UI/views/about_all_wars.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex;
  int _currentTab = 0;

  List _icons = [
    '1700',
    '1800',
    '1900',
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutAllWars()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 80.0,
        height: 40.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.00)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 4.00,
              spreadRadius: 2.00,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.yellow,
              Colors.white,
            ],
          ),
        ),
        child: Text(
          '${_icons[index]}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.00,
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
            color: _selectedIndex == index ? Theme.of(context).primaryColor : Colors.red,
          ),
        ),
    ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'Welcome to Modern War History!',
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20.00,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.
              asMap().
              entries.
              map((MapEntry map) => _buildIcons(map.key)
              ).toList(),
            ),
            SizedBox(height: 20.00,),
            TopBattleController(),
            SizedBox(height: 20.00,),
            WeaponController(),
            SizedBox(height: 20.00,),
            CyberController(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.00,
              backgroundColor: Colors.lightBlueAccent,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.00,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_searching,
              size: 30.00,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
