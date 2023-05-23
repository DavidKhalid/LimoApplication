import 'package:http/http.dart' as myhttp;
// import 'dart:async';
import 'dart:convert';

class Data {
  String? id;
  String? username;
  String? created_by;

  Data({
    this.id,
    this.username,
    this.created_by,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    username = json['nama'];
    created_by = json['email'];
  }
}

class ModelLoginClient {
  bool status;
  List<Data>? data;

  String? msg;

  ModelLoginClient({required this.status, this.data, this.msg});

  factory ModelLoginClient.fromJson(Map<String, dynamic> json) {
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
    return ModelLoginClient(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelLoginClient> loginApiforClient({
    required String username,
    required String password,
    // required String sebagai
  }) async {
    print("username yang diterima : " + username.toString());
    print("password yang diterima : " + password.toString());
    var endpoint = Uri.parse("https://bohlimo.com/login?role=client");
    var apiResult = await myhttp
        .post(endpoint, body: {"username": username, "password": password});
    //
    try {
      var jsonObject = json.decode(apiResult.body);
      return ModelLoginClient.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelLoginClient(status: false, msg: "Gagal Login");
    }
  }
}
