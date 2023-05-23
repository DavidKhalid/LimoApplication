import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id;
  String? username;
  String? jenis_kelamin;
  String? nik;
  String? alamat;
  String? email;
  String? portofolio;
  String? created_by;
  // String? role;

  Data({
    this.id,
    this.username,
    this.jenis_kelamin,
    this.nik,
    this.alamat,
    this.email,
    this.portofolio,
    this.created_by,
    // this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    username = json['username'];
    jenis_kelamin = json["jenis_kelamin"];
    nik = json["nik"];
    alamat = json["alamat"];
    email = json[email];
    portofolio = json["portofolio"];
    created_by = json["created_by"];
    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelSignUpClient {
  bool status;
  List<Data>? data;

  String? msg;

  ModelSignUpClient({required this.status, this.data, this.msg});

  factory ModelSignUpClient.fromJson(Map<String, dynamic> json) {
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
    return ModelSignUpClient(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelSignUpClient> signupApiforClient({
    required String username,
    required String nama,
    required String password,
    required String alamat,
    required String nik,
    required String jenis_kelamin,
    required String portofolio,
    required String email,

    // required String sebagai
  }) async {
    print("username yang diterima : " + username.toString());

    print("password yang diterima : " + password.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/register?role=client");
    var apiResult = await myhttp.post(endpoint, body: {
      "username": username,
      "nama": nama,
      "password": password,
      "alamat": alamat,
      "nik": nik,
      "jenis_kelamin": jenis_kelamin,
      "portofolio": portofolio,
      "email": email,
    });
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelSignUpClient.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelSignUpClient(status: false, msg: "Gagal SignUp");
    }
  }
}
