import 'package:flutter/material.dart';
import 'sharedPrefs.dart';
import 'drawer.dart';
import 'homePageBody.dart';
import 'login.dart';
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
      bottomNavigationBar: FutureBuilder(
        future: SharedPreferencesHelper.getLoginStatus(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return snapshot.hasData ? bottomNavBar('profile') : bottomNavBar('login');
          },
      )
    );
  }



  Widget bottomNavBar(type){
    return
    type == 'login'?
     BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
          BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key), title: Text('Login')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.pinkAccent[700],
        onTap: _onItemTapped,
      )
      :
      BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Profile')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.pinkAccent[700],
        onTap: _onItemTappedProfile,
              );
        
        
          }
        
          void _onItemTapped(int index) {
        
            setState(() {
              _selectedIndex = index;
            });
          }
        
          void _onItemTappedProfile(int index) {
             if (index == 1){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
              return null;
            }
  }
}
