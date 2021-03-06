import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  @override
  HomePageBodyState createState() => HomePageBodyState();
}

class HomePageBodyState extends State<HomePageBody> {
  List<List> weeks = [
    [
      'Week One',
      'assets/Logo.png',
      'Introduction to week one:JavaScript Fundamentals and Functions  Booleans, Comparisons, and Operators,  Variables in JavaScript  While Loop and ArraysAndForLoop',
      'Fundamentals',
      'Comparison',
      'Variables',
      'WhileLoop',
      'ArraysAndForLoop'
    ],
    [
      'Week Two',
      'assets/Week2.jpg',
      'Introduction to week two:Objects, Comparisons, DataModeling, HigherOrderEach, Map and Filter',
      'Objects',
      'DataModeling',
      'HigherOrderEach',
      'Map',
      'Filter'
    ],
    [
      'Week Three',
      'assets/Logo.png',
      'Introduction to week three:Reduce, DataModeling, AbstractClosureDM,  OOP,HTMLCSSjQuery ',
      'Reduce',
      'Methods',
      'AbstractClosureDM',
      'OOP',
      'HTMLCSSjQuery'
    ],
    [
      'Week Four',
      'assets/Logo.png',
      'Introduction to week four:Git, Testing, WebDev',
      'Git',
      'Testing',
      'Web Development',
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: weeks.map((element) {
        if (element != weeks[weeks.length - 1]) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(element[0],style: TextStyle(fontWeight:FontWeight.bold,fontSize:20.0),),
                  margin: EdgeInsets.all(10.0),
                ),
                Divider(),
                Image.asset(element[1]),
                Divider(),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(element[2]),
                ),
                Divider(),
                ExpansionTile(
                  title: Text(element[0]),
                  children: <Widget>[
                    ListTile(
                      title: Text(element[3]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[3]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[4]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[4]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[5]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[5]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[6]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[6]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[7]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[7]}');
                      },
                    ),
                    PopupMenuDivider(),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(element[0],style: TextStyle(fontWeight:FontWeight.bold,fontSize:20.0),),
                  margin: EdgeInsets.all(10.0),
                ),
                Image.asset(element[1]),
                Divider(),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(element[2]),
                ),
                Divider(),
                ExpansionTile(
                  title: Text(element[0]),
                  children: <Widget>[
                    ListTile(
                      title: Text(element[3]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[3]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[4]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[4]}');
                      },
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[5]),
                      onTap: () {
                        Navigator.pushNamed(context, '/${element[5]}');
                      },
                    ),
                    PopupMenuDivider(),
                  ],
                ),
              ],
            ),
          );
        }
      }).toList(),
    );
  }
}
