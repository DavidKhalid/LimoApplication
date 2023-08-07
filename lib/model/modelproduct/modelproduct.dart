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
  String? statusproduct;
  String? alamat;

  // String? role;

  Data(
      {this.id,
      this.productName,
      this.kategori,
      this.username,
      this.created_by,
      this.price,
      this.keterangan,
      this.statusproduct,
      this.alamat

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
    statusproduct = json['status'].toString();
    alamat = json['alamat'].toString();

    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelProduct {
  bool status;
  List<Data>? data;

  String? msg;

  ModelProduct({required this.status, this.data, this.msg});

  factory ModelProduct.fromJson(Map<String, dynamic> json) {
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
    return ModelProduct(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelProduct> getProductUI(// this is GET UI/UX(UI)

      // required String kategori,

      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/product?kategori=UI");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Get Product Gagal");
    }
  }

  static Future<ModelProduct> getProductWD(// this is GET WEB(WD)

      // required String kategori,

      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/product?kategori=WD");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Get Product Gagal");
    }
  }

  static Future<ModelProduct> getProductMD(// this is GET Android (MD)

      // required String kategori,

      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/product?kategori=MD");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Get Product Gagal");
    }
  }

  static Future<ModelProduct> getProductByUsername({
    required String username,
  }
      // this is GET Product By Username

      // required String kategori,

      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint =
        Uri.parse("https://bohlimo.com/productByUsername?username=$username");
    print(endpoint);

    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Get Product By Username Gagal");
    }
  }

  static Future<ModelProduct> test({required String keyboard}) async {
    var result =
        Uri.parse("https://bohlimo.com/productByUsername?username=${keyboard}");
    print(result);

    return ModelProduct(status: true);
  }

  static Future<ModelProduct> getSingleDataByUsername(
      // this is GET Product By Username

      // required String kategori,

      // required String sebagai
      ) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/user?username=parman");

    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(
          status: false, msg: "Get Single Data By Username Gagal");
    }
  }

  static Future<ModelProduct> postProduct({
    // this is POST
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
    var endpoint = Uri.parse("https://bohlimo.com/product?username=davidk");
    var apiResult = await myhttp.post(endpoint, body: {
      "username": username,
      "productName": productname,
      "price": price,
      "kategori": kategori,
      "keterangan": keterangan,
    });
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Post Product Gagal");
    }
  }

  static Future<ModelProduct> putProduct({
    // this is PUt
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
    var endpoint = Uri.parse("https://bohlimo.com/product?id_product=WD");
    var apiResult = await myhttp.put(endpoint, body: {
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

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Put Product Gagal");
    }
  }

  static Future<ModelProduct> deleteProduct({
    // this is DELETE
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
    var endpoint = Uri.parse("https://bohlimo.com/product?id_product=");
    var apiResult = await myhttp.delete(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelProduct.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelProduct(status: false, msg: "Delete Product Gagal");
    }
  }
}
