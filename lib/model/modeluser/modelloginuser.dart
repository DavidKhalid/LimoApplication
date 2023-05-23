import 'package:http/http.dart' as myhttp;
// import 'dart:async';
import 'dart:convert';

class Data {
  String? id;
  String? nama;
  String? email;
  String? role;

  Data({
    this.id,
    this.nama,
    this.email,
    this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    nama = json['nama'];
    email = json['email'];
  }
}

class ModelLoginUser {
  bool status;
  List<Data>? data;

  String? msg;

  ModelLoginUser({required this.status, this.data, this.msg});

  factory ModelLoginUser.fromJson(Map<String, dynamic> json) {
    print("Balikan data : " + json['data'].toString());
    print("Balikan data : " + json['msg'].toString());
    print("Balikan data : " + json['status'].toString());
    // print("Balikan pesan : " + json['message']);
    List<Data> dataArray = [];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        dataArray.add(Data.fromJson(v));
      });
    }
    return ModelLoginUser(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelLoginUser> loginApiforUser({
    required String username,
    required String password,
    // required String sebagai
  }) async {
    print("username yang diterima : " + username.toString());
    print("password yang diterima : " + password.toString());
    var endpoint = Uri.parse("https://bohlimo.com/login?role=user");
    var apiResult = await myhttp
        .post(endpoint, body: {"username": username, "password": password});
    //
    try {
      var jsonObject = json.decode(apiResult.body);
      return ModelLoginUser.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelLoginUser(status: false, msg: "Gagal Login");
    }
  }
}
