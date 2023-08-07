import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id_transksi;
  String? resi;
  String? productName;
  String? price;
  String? status;
  String? link;
  String? catatan;
  String? nego_id;
  String? nego_productName;
  String? nego_price_awal;
  String? nego_price;
  String? nego_user;
  String? nego_client;
  String? nego_status;
  String? nego_deadline;
  String? nego_description;

  // String? role;

  Data({
    this.id_transksi,
    this.resi,
    this.productName,
    this.price,
    this.status,
    this.link,
    this.catatan,
    this.nego_id,
    this.nego_productName,
    this.nego_price_awal,
    this.nego_price,
    this.nego_user,
    this.nego_client,
    this.nego_status,
    this.nego_deadline,
    this.nego_description,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id_transksi = json['id_transaksi'].toString();
    resi = json["resi"].toString();
    productName = json["productName"].toString();
    price = json["price"].toString();
    status = json['status'].toString();
    link = json['catatan']["link"].toString();
    catatan = json["catatan"]["catatan"].toString();
    nego_id = json["nego"]["id"].toString();
    // nego_productName = json["productName"];
    // nego_price_awal = json["price_awal"];
    // nego_price = json["price"];
    // nego_user = json["user"];
    // nego_client = json["client"];
    // nego_status = json["status"];
    // nego_deadline = json["deadline"];
    // nego_description = json["description"];
    nego_productName = json["nego"]["productName"].toString();
    nego_price_awal = json["nego"]["price_awal"].toString();
    nego_price = json["nego"]["price"].toString();
    nego_user = json["nego"]["user"].toString();
    nego_client = json["nego"]["client"].toString();
    nego_status = json["nego"]["status"].toString();
    nego_deadline = json["nego"]["deadline"].toString();
    nego_description = json["nego"]["description"].toString();

    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelTransaksiSingleList {
  bool status;
  List<Data>? data;

  String? msg;

  ModelTransaksiSingleList({required this.status, this.data, this.msg});

  factory ModelTransaksiSingleList.fromJson(Map<String, dynamic> json) {
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
    return ModelTransaksiSingleList(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelTransaksiSingleList> getsingletransaksi({
    required String id_transaksi,
  }) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse(
        "https://bohlimo.com/transaksi/byid?id_transaksi=$id_transaksi");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelTransaksiSingleList.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelTransaksiSingleList(
          status: false, msg: "get single transaksi gagal");
    }
  }
}
