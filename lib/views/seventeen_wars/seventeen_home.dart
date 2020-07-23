import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modern_wars_UI/models/seventeen_hundred_wars.dart';
import 'seventeen_first.dart';

class SeventeenHome extends StatefulWidget {
  @override
  _SeventeenHomeState createState() => _SeventeenHomeState();
}

class _SeventeenHomeState extends State<SeventeenHome> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          stretch: true,
          expandedHeight: 350.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              fit: BoxFit.cover,
              image: AssetImage('images/1.jpg'),
            ),
            stretchModes: [
              StretchMode.zoomBackground,
            ],
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 420,
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                // text direction does the same thing horizontally
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Major Battles in 1700',
                      style: TextStyle(
                          fontSize: 110.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schuyler',
                          foreground: Paint()
                            ..color = Colors.red
                            ..strokeWidth = 2.0
                            ..style = PaintingStyle.stroke
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],
              ),
            ),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ]),
        ),

      ],
    );
  }
}

