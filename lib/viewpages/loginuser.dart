// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:limoapplication/viewpages/user/homeuser.dart';
import 'package:limoapplication/model/modeluser/modelloginuser.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart'; // package easyloading untuk popup

class LoginPageUser extends StatefulWidget {
  @override
  State<LoginPageUser> createState() => _LoginPageUserState();
}

class _LoginPageUserState extends State<LoginPageUser> {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override // ini pemakaian package easyloading
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
  } // batasnya sampai disini

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    //final bodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;

    double getSmallDiameter = MediaQuery.of(context).size.width * 2 / 3;
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  // FIRST CIRCLE
                  left: -getSmallDiameter / 3,
                  top: -getSmallDiameter / 3,
                  child: Container(
                    width: getSmallDiameter,
                    height: getSmallDiameter,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [Color(0xFFFA7A35), Color(0xFFFFFFFF)])),
                  ),
                ),
                Positioned(
                  // SECOND CIRCLE
                  right: -getSmallDiameter / 3,
                  bottom: -getSmallDiameter / 3,
                  child: Container(
                    width: getSmallDiameter,
                    height: getSmallDiameter,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFFA7A35), Color(0xFFFFFFFF)])),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // ASSETS LIMO WHITE COLOR
                      margin: EdgeInsets.only(top: 35, left: 20),
                      width: 110,
                      height: 90,
                      //color: Colors.green,
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/limowhite.png")),
                    ),
                    Padding(
                      // TEXT LOGIN
                      padding: const EdgeInsets.only(left: 160, top: 50),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: MediaQueryWidth * 0.9,
                      height: 60,
                      child: TextField(
                        controller: UsernameController,
                        decoration: InputDecoration(
                            hintText: "Username ...",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                            // prefixText: "Email: ",
                            // prefixStyle: TextStyle(
                            //color: Colors.lightBlue.shade300,
                            //   fontSize: 16,
                            // fontStyle: FontStyle.normal,
                            //fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: MediaQueryWidth * 0.9,
                      height: 60,
                      child: TextField(
                        controller: PasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password ...",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                            // prefixText: "Email: ",
                            // prefixStyle: TextStyle(
                            //color: Colors.lightBlue.shade300,
                            //   fontSize: 16,
                            // fontStyle: FontStyle.normal,
                            //fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (UsernameController.text.isEmpty) {
                                  // ini implementasi easyloading
                                  EasyLoading.showError(
                                      "Username Tidak Boleh Kosong");
                                  print("username tidak boleh kosong");
                                  return;
                                }
                                if (PasswordController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Password Tidak Boleh Kosong");
                                  print("password tidak boleh kosong");
                                  return;
                                } // batasnya sampai disini
                                ModelLoginUser.loginApiforUser(
                                  username: UsernameController.text,
                                  password: PasswordController.text,
                                ).then(
                                  (value) {
                                    ModelLoginUser data = value;
                                    print(value.status);
                                    if (value.status) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return HomeUser();
                                          },
                                        ),
                                      );
                                    } else {
                                      print(value.msg);
                                    }

                                    // return null;
                                  },
                                );
                              },
                              child: Container(
                                width: MediaQueryWidth * 0.5,
                                height: MediaQueryHeight * 0.1,
                                child: Center(
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFFA7A35)
                                              .withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3))
                                    ],
                                    color: Color(0xFFFA7A35),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
