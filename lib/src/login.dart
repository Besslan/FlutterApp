import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool loggedin = false;
  String email;
  String passwprd;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    if (loggedin == false) {
      return Center(
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
              controller: emailController,
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
              controller: passwordController,
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
                onPressed: () {
                  setState(() {
                    email = emailController.text;
                    passwprd = passwordController.text;
                  });
                  signIn();
                },
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
      );
    } else {
      return 
      Text('already logged in');
    } 
  }


  Future<void> signIn() async {
    try {
      FirebaseUser user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passwprd);
      // Navigator.pushNamed(context, '/Profile');
    } catch (err) {
      print(err.message);
    }
  }
}
