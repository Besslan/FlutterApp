import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
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
          ExpansionTile(
            title: Text('Week 1'),
            children: <Widget>[
              ListTile(
                title: Text("Sprint 1"),
                onTap: () {
                  Navigator.pushNamed(context, '/Sprint');
                },
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 2"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 3"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 4"),
                onTap: () {},
              ),
              PopupMenuDivider(),
            ],
          ),
          ExpansionTile(
            title: Text('Week 2'),
            children: <Widget>[
              ListTile(
                title: Text("Sprint 1"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 2"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 3"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 4"),
                onTap: () {},
              ),
              PopupMenuDivider(),
            ],
          ),
          ExpansionTile(
            title: Text('Week 3'),
            children: <Widget>[
              ListTile(
                title: Text("Sprint 1"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 2"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 3"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 4"),
                onTap: () {},
              ),
              PopupMenuDivider(),
            ],
          ),
          ExpansionTile(
            title: Text('Week 4'),
            children: <Widget>[
              ListTile(
                title: Text("Sprint 1"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("SPrint 2"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 3"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Sprint 4"),
                onTap: () {},
              ),
              PopupMenuDivider(),
            ],
          ),
          ExpansionTile(
            title: Text('Quizzes'),
            children: <Widget>[
              ListTile(
                title: Text("Week One Quiz"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Week Two Quiz"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Week Three Quiz"),
                onTap: () {},
              ),
              PopupMenuDivider(),
              ListTile(
                title: Text("Week four Quiz"),
                onTap: () {},
              ),
              PopupMenuDivider(),
            ],
          ),
        ],
      ),
    );
  }
}
