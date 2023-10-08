import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id;
  String? productName;
  String? kategori;
  String? username;
  String? created_by;
  String? price;
  String? keterangan;
  String? product_id;
  String? price_awal;
  String? user;
  String? client;
  String? status;
  String? deadline;
  String? description;

  // String? role;

  Data({
    this.id,
    this.productName,
    this.kategori,
    this.username,
    this.created_by,
    this.price,
    this.keterangan,
    this.product_id,
    this.price_awal,
    this.user,
    this.client,
    this.status,
    this.deadline,
    this.description,
    // this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    productName = json['productName'];
    kategori = json['kategori'];
    username = json['username'];
    created_by = json['created_by'];
    price = json['price'];
    keterangan = json["keterangan"];
    product_id = json["product_id"];
    price_awal = json["price_awal"];
    user = json["user"];
    client = json["client"];
    status = json["status"];
    deadline = json["deadline"];
    description = json["description"];
    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelNego {
  bool status;
  List<Data>? data;

  String? msg;

  ModelNego({required this.status, this.data, this.msg});

  factory ModelNego.fromJson(Map<String, dynamic> json) {
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
    return ModelNego(status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelNego> getDataNegoUser({
    // this is GET UI/UX(UI)

    required String username,


    // required String sebagai
  }) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint =
        Uri.parse("https://bohlimo.com/nego?username=$username&role=user");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelNego.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelNego(status: false, msg: "Get Data Nego User Gagal");
    }
  }

  static Future<ModelNego> getDataNegoClient({
    required String username,
    required String role,
  }) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint =
        Uri.parse("https://bohlimo.com/nego?username=$username&role=$role");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelNego.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelNego(status: false, msg: "Get Data Nego Client Gagal");
    }
  }

  static Future<ModelNego> createNego({
    required String price,
    required String deadline,
    required String description,
    required String username,
    required String product_id,
  }
      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse(
        "https://bohlimo.com/nego?username=$username&id_product=$product_id");
    var apiResult = await myhttp.post(endpoint, body: {
      "price": price,
      "deadline": deadline,
      "description": description
    });
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelNego.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelNego(status: false, msg: "Create Nego Gagal");
    }
  }

  static Future<ModelNego> endNegoDiterima({
    required String id_nego,
    required String status,
  }
      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/nego/end?id_nego=$id_nego");
    var apiResult = await myhttp.post(endpoint, body: {"status": status});
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelNego.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelNego(status: false, msg: "End Nego Diterima Gagal");
    }
  }

  static Future<ModelNego> endNegoDitolak({
    required String status,
    required String id_nego,
  }
      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/nego/end?id_nego=$id_nego");
    var apiResult = await myhttp.post(endpoint, body: {"status": status});
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelNego.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelNego(status: false, msg: "End Nego Ditolak Gagal");
    }
  }
}
