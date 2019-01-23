import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
  final List<List> weeks = [
    [
      'Week One',
      'Fundamentals',
      'Comparison',
      'Variables',
      'WhileLoop',
      'ArraysAndForLoop'
    ],
    [
      'Week Two',
      'Objects',
      'DataModeling',
      'HigherOrderEach',
      'Map',
      'Filter'
    ],
    [
      'Week Three',
      'Reduce',
      'DataModeling',
      'AbstractClosureDM',
      'OOP',
      'HTMLCSSjQuery'
    ],
    [
      'Week Four',
      'Git',
      'Testing',
      'WebDev',
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: new Image(
                image: new AssetImage('assets/Logo.png'),
              ),
            ),
          ),
          Column(
              children: weeks.map((element) {
            if (element != weeks[weeks.length - 1]) {
              return ExpansionTile(
                title: Text(element[0]),
                children: <Widget>[
                  ListTile(
                    title: Text(element[1]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[1]}');
                    },
                  ),
                  ListTile(
                    title: Text(element[2]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[2]}');
                    },
                  ), 
                  ListTile(
                    title: Text(element[3]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[3]}');
                    },
                  ),
                  ListTile(
                    title: Text(element[4]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[4]}');
                    },
                  ),
                  ListTile(
                    title: Text(element[5]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[5]}');
                    },
                  ),
                ],
              );
            } else {
              return ExpansionTile(
                title: Text(element[0]),
                children: <Widget>[
                  ListTile(
                    title: Text(element[1]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[1]}');
                    },
                  ),
                  ListTile(
                    title: Text(element[2]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[2]}');
                    },
                  ),    
                  ListTile(
                    title: Text(element[3]),
                    onTap: () {
                      Navigator.pushNamed(context, '/${element[3]}');
                    },
                  ), 
                ],
              );
            }
          }).toList()),
          ExpansionTile(
            title: Text('Quizzes'),
            children: <Widget>[
              ListTile(
                title: Text("Week One Quiz"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Week Two Quiz"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Week Three Quiz"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Week four Quiz"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
