import 'package:flutter/material.dart';
import 'drawer.dart';
import 'homePageBody.dart';
// import 'login.dart';
import 'bloclogin.dart';
import 'profile.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    HomePageBody(),
    BlocLogIn(),
    // Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[700],
        title: Text('PrepApp'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: DrawerNavigation(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key), title: Text('Login')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Profile')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    
    if (index == 2){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
      return null;
    }
    setState(() {
      _selectedIndex = index;
    });
  }
}
