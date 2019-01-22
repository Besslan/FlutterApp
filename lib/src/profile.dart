import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key key, @required this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  bool loggedin = true;
  String profilePicture = 'assets/small-Logo.png';
  

  
  @override
  Widget build(BuildContext context) {
    if (loggedin == true) {
      return Scaffold(
        appBar: AppBar(),
        drawer: DrawerNavigation(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: CircleAvatar(
                      child: Image.asset(profilePicture),
                      backgroundColor: Colors.blueGrey[50],
                      maxRadius: 80,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      'Email: ${widget.user.email}',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Surveys'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Emotional'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Calander'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Logout'),
                            onPressed: () {},
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Townhall'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Help Desk'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Chat'),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Vote'),
                            onPressed: () {},
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Text('Please login and try again'),
      ),
    );
  }
}
