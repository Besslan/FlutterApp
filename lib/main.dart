import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/sprints/functions.dart';
import 'src/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    if (settings.name == '/'){
      return MaterialPageRoute(
      builder: (context) {
        return HomePage();
      },
    );
    }
    else if (settings.name == '/Fundamentals') {
      return MaterialPageRoute(
      builder: (context) {
        return Functions();
      },
    );
    }
     else if (settings.name == '/Profile') {
      return MaterialPageRoute(
      builder: (context) {
        return Profile();
      },
    );
    }
    return   MaterialPageRoute(
      builder: (context) {
        return HomePage();
      },
    );
  }
}
