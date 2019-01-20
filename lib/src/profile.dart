import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String tag = 'login-page';
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  bool loggedin = true;

  @override
  Widget build(BuildContext context) {
    if (loggedin == true) {
      return Text('data');
    }

    return Scaffold(
      body: Center(
        child: Text('Please login and try again'),
      ),
    );
  }
}
