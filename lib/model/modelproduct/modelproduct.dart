import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id;
  String? productname;
  String? kategori;
  String? username;
  String? created_by;
  String? price;
  String? keterangan;

  // String? role;

  Data({
    this.id,
    this.productname,
    this.kategori,
    this.username,
    this.created_by,
    this.price,
    this.keterangan,
    // this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    productname = json['productname'];
    kategori = json['kategori'];
    username = json['username'];
    created_by = json['created_by'];
    price = json['price'];
    keterangan = json[keterangan];
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
    required String productname,
    required String price,
    required String kategori,
    required String keterangan,

    // required String sebagai
  }) async {
    print("username yang diterima : " + username.toString());

    print("password yang diterima : " + productname.toString());
    print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/product?kategori=MD");
    var apiResult = await myhttp.post(endpoint, body: {
      "username": username,
      "productname": productname,
      "price": price,
      "kategori": kategori,
      "keterangan": keterangan,
    });
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelSignUpClient.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelSignUpClient(status: false, msg: "Get Product Gagal");
    }
  }
}
