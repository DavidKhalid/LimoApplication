import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  Future<void> setSession(
      {bool? loggedIn, String? id, String? username}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool("logged_in", loggedIn!);
    prefs.setString("id", id!);
    prefs.setString("username", username!);
  }

  Future<bool> getLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool("logged_in") ?? false;
  }

  Future<String> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("id") ?? "";
  }

  Future<String> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("username") ?? "";
  }

  Future<void> logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
