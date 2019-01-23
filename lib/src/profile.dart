import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'drawer.dart';
import 'dart:async';

class Profile extends StatefulWidget {
  const Profile({Key key, @required this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile> {
  String profilePicture = 'assets/small-Logo.png';

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Image.asset(profilePicture);
          } else {
            if (snapshot.hasData) {
              return profilePage();
            }

            return logInAgain();
          }
        });
  }

  // Future<void> getCurrentUser() async {
  //   var user = await FirebaseAuth.instance.currentUser();
  // }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Widget profilePage() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile page'),
        backgroundColor: Colors.pinkAccent[700],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          if (index == 1) {
            signOut();
            Navigator.pushNamed(context, '/');
          }
          print(index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outline),
            title: Text('LogOut'),
          ),
        ],
      ),
      drawer: DrawerNavigation(),
      body: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        childAspectRatio: 1.2,
        crossAxisCount: 1,
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
                FlatButton(
                  child: Text(
                    'Upload profile picture',
                    style: TextStyle(color: Colors.blueGrey[800]),
                  ),
                  onPressed: () {},
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
          GridView.count(
            childAspectRatio: 2.0,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Calender'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Surveys'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Calender'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('HelpDesk'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('TownHall'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Chat'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text(
                    'Emotional Health',
                    textAlign: TextAlign.center,
                  ),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Material'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pinkAccent[700],
                  child: Text('Quizzes'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget logInAgain() {
//     const timeout = const Duration(seconds: 3);
//     const ms = const Duration(milliseconds: 1);

// void handleTimeout() {  // callback function
//  Navigator.pushNamed(context, '/');
// }
// startTimeout([int milliseconds]) {
//   var duration = milliseconds == null ? timeout : ms * milliseconds;
//   return new Timer(duration, handleTimeout);
// }
// startTimeout(3000);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[700],
      ),
      body: Center(
        child: Text('Please Login again to access this page'),
      ),
    );
  }
}
