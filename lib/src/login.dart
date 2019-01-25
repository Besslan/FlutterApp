import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'profile.dart';
import './blocs/bloc.dart';

class BlocLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          emailFeild(),
          passwordFeild(),
          submitButton(),
        ],
      ),
    );
  }

  Future<void> signIn(context, email, password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('loggedin', 'true');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
    } catch (err) {
      print(err.message);
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('loggedin', 'true');
    await prefs.setString('email', email);
  }

  Widget emailFeild() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email Adress',
            hintText: 'you@example.com',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordFeild() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changepassword,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Password',
            errorText: snapshot.error,
          ),
          obscureText: true,
        );
      },
    );
  }

  Widget submitButton() {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: snapshot.hasData
                ? () {
                    List values = bloc.getValues();
                    String validEmail = values[0];
                    String validPassword = values[1];
                    signIn(context, validEmail, validPassword);
                  }
                : null,
            padding: EdgeInsets.all(12),
            color: Colors.pinkAccent[700],
            child: Text('Submit', style: TextStyle(color: Colors.white)),
          ),
        );
      },
    );
  }
}
