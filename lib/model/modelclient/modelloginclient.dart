import 'package:http/http.dart' as myhttp;
// import 'dart:async';
import 'dart:convert';

class Data {
  String? id;
  String? username;
  String? created_by;
  String? name;
  String? email;
  String? jenis_kelamin;
  String? nik;
  String? alamat;
  String? portofolio;

  Data({
    this.id,
    this.username,
    this.created_by,
    this.name,
    this.alamat,
    this.email,
    this.jenis_kelamin,
    this.nik,
    this.portofolio,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    username = json['username'];
    created_by = json['created_by'];
    email = json["email"];
    name = json["nama"];
    alamat = json["alamat"];
    jenis_kelamin = json["jenis_kelamin"];
    nik = json["nik"];
    portofolio = json["portofolio"];
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
