import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id;
  String? username;
  // String? role;

  Data({
    this.id,
    this.username,
    // this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    username = json['username'];
    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelSignUpUser {
  bool status;
  List<Data>? data;

  String? msg;

  ModelSignUpUser({required this.status, this.data, this.msg});

  factory ModelSignUpUser.fromJson(Map<String, dynamic> json) {
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
    return ModelSignUpUser(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelSignUpUser> signupApiforUser({
    required String username,
    required String password,

    // required String sebagai
  }) async {
    print("username yang diterima : " + username.toString());

    print("password yang diterima : " + password.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/register?role=user");
    var apiResult = await myhttp.post(endpoint, body: {
      "username": username,
      "password": password,
    });
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelSignUpUser.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelSignUpUser(status: false, msg: "Gagal SignUp");
    }
  }
}
