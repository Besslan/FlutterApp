import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  bool loggedin = true;
  String profilePicture = 'assets/small-Logo.png';
  String name = 'Besslan Bzadough';
  String email = 'Besslan.bazadough@gmail.com';

  @override
  Widget build(BuildContext context) {
    if (loggedin == true) {
      return Scaffold(
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
                      'Name: $name',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      'Email: $email',
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Container(
            //           margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: <Widget>[
            //               RaisedButton(
            //                 child: Text('Surveys'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('Emotional'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('Calander'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('data'),
            //                 onPressed: () {},
            //               ),
            //             ],
            //           )),
            //       Container(
            //           margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: <Widget>[
            //               RaisedButton(
            //                 child: Text('Townhall'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('Help Desk'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('data'),
            //                 onPressed: () {},
            //               ),
            //               RaisedButton(
            //                 child: Text('data'),
            //                 onPressed: () {},
            //               ),
            //             ],
            //           )),
            //     ],
            //   ),
            // ),
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