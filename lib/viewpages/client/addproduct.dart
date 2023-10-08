import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:limoapplication/model/modelproduct/modelproduct.dart';
import 'package:limoapplication/viewpages/client/homeclient.dart';
import 'package:limoapplication/model/session_manager.dart';

class AddProduct extends StatefulWidget {
  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController productnameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  SessionManager sessionManager = SessionManager();
  String username = "";

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.light;
    EasyLoading.dismiss();

    Future<String> getUsername = sessionManager.getUsername();
    getUsername.then((value) {
      setState(() {
        username = value;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaqueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFFFA7A35),
            elevation: 8,
            title: Text(
              "Add Product",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: mediaqueryWidth * 0.9,
                height: 60,
                child: TextField(
                  controller: productnameController,
                  decoration: InputDecoration(
                      hintText: "Product Name ...",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: mediaqueryWidth * 0.9,
                height: 60,
                child: TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                      hintText: "Price ...",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: mediaqueryWidth * 0.9,
                height: 60,
                child: TextField(
                  controller: categoryController,
                  decoration: InputDecoration(
                      hintText: "Category ...",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: mediaqueryWidth * 0.9,
                height: bodyHeight * 0.3,
                child: TextField(
                  maxLines: 9,
                  controller: descriptionController,
                  decoration: InputDecoration(
                      hintText: "Description ...",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Positioned(
                left: mediaqueryWidth / 4,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    if (productnameController.text.isEmpty) {
                      EasyLoading.showError("Product Name Tidak Boleh Kosong");
                      print("product name tidak boleh kosong");
                      return;
                    }
                    if (priceController.text.isEmpty) {
                      EasyLoading.showError("Price Tidak Boleh Kosong");
                      print("price tidak boleh kosong");
                      return;
                    }
                    if (categoryController.text.isEmpty) {
                      EasyLoading.showError("Category Tidak Boleh Kosong");
                      print("category tidak boleh kosong");
                      return;
                    }
                    if (descriptionController.text.isEmpty) {
                      EasyLoading.showError("Description Tidak Boleh Kosong");
                      print("description tidak boleh kosong");
                      return;
                    }
                    ModelProduct.postProduct(
                            username: username,
                            productname: productnameController.text,
                            price: priceController.text,
                            kategori: categoryController.text,
                            keterangan: descriptionController.text)
                        .then((value) {
                      ModelProduct modelproduct = value;
                      print(value.status);
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
                    width: mediaqueryWidth * 0.5,
                    height: bodyHeight * 0.06,
                    child: Center(
                      child: Text(
                        "SUBMIT NOW",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFFA7A35).withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ],
                        color: Color(0xFFFA7A35),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
