import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id_transksi;
  String? status;

  // String? role;

  Data({
    this.id_transksi,
    this.status,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id_transksi = json['id_transaksi'].toString();
    status = json['status'].toString();

    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelTransaksi {
  bool status;
  List<Data>? data;

  String? msg;

  ModelTransaksi({required this.status, this.data, this.msg});

  factory ModelTransaksi.fromJson(Map<String, dynamic> json) {
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
    return ModelTransaksi(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelTransaksi> trackingstatus({
    required String id_nego,
  }) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint = Uri.parse("https://bohlimo.com/transaksi?id_nego=$id_nego");
    var apiResult = await myhttp.get(endpoint);
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelTransaksi.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelTransaksi(status: false, msg: "Transaksi Berhasil");
    }
  }
}
