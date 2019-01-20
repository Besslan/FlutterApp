import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool loggedin = false;
  @override
  Widget build(BuildContext context) {
    if (loggedin == false) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset('assets/small-Logo.png'),
                ),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                // autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(12),
                  color: Colors.pinkAccent[700],
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
              //         FlatButton(
              //   child: Text(
              //     'Forgot password?',
              //     style: TextStyle(color: Colors.black54),
              //   ),
              //   onPressed: () {},
              // )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Text('already logged in'),
      );
    }

  }
}
