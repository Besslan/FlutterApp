import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'drawer.dart';
import 'sharedPrefs.dart';

class Profile extends StatelessWidget {
  final email = SharedPreferencesHelper.getEmail();
  final String profilePicture = 'assets/small-Logo.png';

  final List<List> gridInfo = [
    ['Calender', '/Calender'],
    ['Surveys', '/Surveys'],
    ['HelpDesk', '/HelpDesk'],
    ['TownHall', '/TownHall'],
    ['Chat', '/Chat'],
    ['Emotional Health', '/Emotional Health'],
    ['Material', '/Material'],
    ['Quizzes', '/Quizzes'],
    ['Quizzes', '/Quizzes'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
          future: SharedPreferencesHelper.getLoginStatus(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return snapshot.hasData ? profilePage(context) : logInAgain();
          }),
    );
  }

  Widget profilePage(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile page'),
        backgroundColor: Colors.pinkAccent[700],
      ),
      bottomNavigationBar: bottomNavBar(context),
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
                  onPressed: () {
                    
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: FutureBuilder(
                    future: SharedPreferencesHelper.getEmail(),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return snapshot.hasData
                          ? Text('Email: ${snapshot.data}')
                          : Container();
                    },
                  ),
                ),
              ],
            ),
          ),
          gridCount(context),
        ],
      ),
    );
  }

  Widget logInAgain() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[700],
      ),
      body: Center(
        child: Text('Please Login again to access this page'),
      ),
    );
  }

  Widget gridCount(context) {
    

    return GridView.count(
      childAspectRatio: 2.0,
      crossAxisCount: 3,
      children: gridInfo.map((element)=> Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Colors.pinkAccent[700],
            child: Text(element[0],
             textAlign: TextAlign.center,),
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, element[1]);
            },
          ),
        ),).toList()
,
    );
  }

  Widget bottomNavBar(context) {
    return BottomNavigationBar(
      onTap: (int index) {
        if (index == 1) {
          signOut();
          Navigator.pushNamed(context, '/');
        }
        Navigator.pushNamed(context, '/');
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
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await SharedPreferencesHelper.signOut();
  }
}
