import 'package:http/http.dart' as myhttp;

import 'dart:convert';

class Data {
  String? id_transksi;
  String? resi;
  String? productName;
  String? price;
  String? status;

  // String? role;

  Data({
    this.id_transksi,
    this.resi,
    this.productName,
    this.price,
    this.status,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id_transksi = json['id_transaksi'].toString();
    status = json['status'].toString();

    // role = json['role'] ?? "TESSTTTTT";
  }
}

class ModelMessage {
  bool status;
  List<Data>? data;

  String? msg;

  ModelMessage({required this.status, this.data, this.msg});

  factory ModelMessage.fromJson(Map<String, dynamic> json) {
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
    return ModelMessage(
        status: json['status'], data: dataArray, msg: json['msg']);
  }

  static Future<ModelMessage> sendmessage({
    required String id_transaksi,
    required String catatan,
    required String link,
  }) async {
    // print("password yang diterima : " + kategori.toString());

    // print("password yang diterima : " + jeniskelamin.toString());
    var endpoint =
        Uri.parse("https://bohlimo.com/transaksi?id_transaksi=$id_transaksi");
    var apiResult =
        await myhttp.post(endpoint, body: {"catatan": catatan, "link": link});
    //

    try {
      var jsonObject = json.decode(apiResult.body);
      print("jsonObject");
      print(jsonObject);

      return ModelMessage.fromJson(jsonObject);
    } catch (e) {
      print(e);
      return ModelMessage(status: false, msg: "Send Message Berhasil");
    }
  }
}
