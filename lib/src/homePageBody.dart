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
      'DataModeling',
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
      'WebDev',
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
                  child: Text(element[0]),
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
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[4]),
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[5]),
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[6]),
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[7]),
                      onTap: () {},
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
                  child: Text(element[0]),
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
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[4]),
                      onTap: () {},
                    ),
                    PopupMenuDivider(),
                    ListTile(
                      title: Text(element[5]),
                      onTap: () {},
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
