import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static Future<String> getLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('loggedin');
  }

  static Future<String> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('email');
  }

   static Future<void> signIn(email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('loggedin', 'true');
    await prefs.setString('email', email);
  }
}
