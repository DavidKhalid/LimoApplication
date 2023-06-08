import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  Future<void> setSession({
    bool? loggedIn,
    String? id,
    String? username,
    String? name,
    String? email,
    String? jeniskelamin,
    String? nik,
    String? alamat,
    String? portofolio,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool("logged_in", loggedIn!);
    prefs.setString("id", id!);
    prefs.setString("username", username!);
    prefs.setString("name", name!);
    prefs.setString("email", email!);
    prefs.setString("jenis_kelamin", jeniskelamin!);
    prefs.setString("nik", nik!);
    prefs.setString("alamat", alamat!);
    prefs.setString("portofolio", portofolio!);
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

  Future<String> getNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("name") ?? "";
  }

  Future<String> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("email") ?? "";
  }

  Future<String> getJenis_Kelamin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("jenis_kelamin") ?? "";
  }

  Future<String> getNik() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("nik") ?? "";
  }

  Future<String> getAlamat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("alamat") ?? "";
  }

  Future<String> getPortofolio() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString("portofolio") ?? "";
  }

  Future<void> logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
