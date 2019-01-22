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
  String profilePicture = 'assets/small-Logo.png';
  String email;
  @override
  Widget build(BuildContext context) {
    email = widget.user.email;
    if (email != null) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile page'),
          backgroundColor: Colors.pinkAccent[700],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            if (index == 1) {
              setState(() {
                   email = null;           
                            });
              Navigator.pushNamed(context, '/');
            }
            print(index);
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_outline), title: Text('LogOut')),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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

    return Scaffold(
      body: Center(
        child: Text('Please login and try again'),
      ),
    );
  }
}
