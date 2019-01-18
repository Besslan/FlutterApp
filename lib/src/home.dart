import 'package:flutter/material.dart';
import 'drawer.dart';
import 'body.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[700],
        title: Text('PrepApp'),
      ),
      drawer: DrawerNavigation(),
      body: Body()
    );
  }
}
