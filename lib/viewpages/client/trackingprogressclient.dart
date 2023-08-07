import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:limoapplication/model/modeltransaksi/modeltransaksi.dart';
import 'package:limoapplication/model/modeltransaksi/modemessage.dart';
import 'package:limoapplication/viewpages/client/homeclient.dart';

class TrackingProgressClient extends StatefulWidget {
  final String id_transaksi;

  const TrackingProgressClient({
    Key? key,
    required this.id_transaksi,
  }) : super(key: key);
  @override
  State<TrackingProgressClient> createState() => _TrackingProgressClientState();
}

class _TrackingProgressClientState extends State<TrackingProgressClient> {
  TextEditingController catatancontroller = TextEditingController();
  TextEditingController linkcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.light;
    EasyLoading.dismiss();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_outlined)),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Progress Status",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: mediaqueryWidth * 0.9,
                  height: mediaqueryHeight * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: catatancontroller,
                    textAlign: TextAlign.justify,
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: "Catatan ...",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: mediaqueryWidth * 0.9,
                  height: mediaqueryHeight * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: linkcontroller,
                    textAlign: TextAlign.justify,
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: "Link ...",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 255,
            ),
            GestureDetector(
              onTap: () {
                if (catatancontroller.text.isEmpty) {
                  EasyLoading.showError("catatan harus diisi");
                  print("catatan harus diisi");
                  return;
                }
                if (linkcontroller.text.isEmpty) {
                  EasyLoading.showError("link harus diisi");
                  print("link harus diisi");
                  return;
                }
                ModelMessage.sendmessage(
                        id_transaksi: widget.id_transaksi,
                        catatan: catatancontroller.text,
                        link: linkcontroller.text)
                    .then((value) {
                  print("berhasil");
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return HomeClient(
                        // id_status: "0",
                        statusproduct: "0",
                        
                      );
                    },
                  ));
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 100, left: 100),
                height: mediaqueryHeight * 0.08,
                decoration: BoxDecoration(
                  color: Color(0xFFFA7A35),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "SEND",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
