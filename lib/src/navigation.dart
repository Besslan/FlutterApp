import 'package:flutter/material.dart';
import 'drawer.dart';
import 'homePageBody.dart';

class Navigation extends StatefulWidget {
 Navigation({Key key}) : super(key: key);

 @override
 NavigationState createState() => NavigationState();
}

 class NavigationState extends State<Navigation> {
 int _selectedIndex = 0;
 final _widgetOptions = [
   HomePageBody(),
   Text('Index 1: Login'),
   Text('Index 2: Profile'),
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
         BottomNavigationBarItem(icon: Icon(Icons.vpn_key), title: Text('Login')),
         BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('Profile')),
       ],
       currentIndex: _selectedIndex,
       fixedColor: Colors.deepPurple, 
       onTap: _onItemTapped,
     ),
   );
 }

 void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}