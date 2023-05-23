import 'package:flutter/material.dart';
import 'package:limoapplication/model/modelclient/modelsignupclient.dart';
import 'package:limoapplication/model/modeluser/modelsignupuser.dart';
import 'package:limoapplication/viewpages/user/homeuser.dart';
import 'package:limoapplication/viewpages/loginclient.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SignUpClient extends StatefulWidget {
  @override
  State<SignUpClient> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpClient> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController portofolioController = TextEditingController();
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
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    //final bodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;

    double getSmallDiameter = MediaQuery.of(context).size.width * 2 / 3;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
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
                      // TEXT SIGN UP
                      padding: const EdgeInsets.only(left: 160, top: 50),
                      child: Text(
                        "Sign up",
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
                        controller: userNameController,
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
                        controller: namaController,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Nama ...",
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
                        controller: emailController,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Email ...",
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
                        controller: passwordController,
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
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: MediaQueryWidth * 0.9,
                      height: 60,
                      child: TextField(
                        controller: jenisKelaminController,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Jenis Kelamin ...",
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
                        controller: nikController,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "NIK ...",
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
                        controller: alamatController,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Alamat ...",
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
                        controller: portofolioController,
                        obscureText: false,
                        decoration: InputDecoration(
                            //labelText: "Portofolio",
                            hintText:
                                "Portofolio : example andirsdrafter@gmail.com ...",
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
                                if (userNameController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Username Tidak Boleh Kosong");
                                  print("username tidak boleh kosong");
                                  return;
                                }
                                if (namaController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Nama Tidak Boleh Kosong");
                                  print("nama tidak boleh kosong");
                                  return;
                                }
                                if (emailController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Email Tidak Boleh Kosong");
                                  print("Email tidak boleh kosong");
                                  return;
                                }
                                if (passwordController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Password Tidak Boleh Kosong");
                                  print("Password tidak boleh kosong");
                                  return;
                                }
                                if (jenisKelaminController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Jenis Kelamin Tidak Boleh Kosong");
                                  print("Jenis Kelamin tidak boleh kosong");
                                  return;
                                }
                                if (nikController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "NIK Tidak Boleh Kosong");
                                  print("Nik tidak boleh kosong");
                                  return;
                                }
                                if (alamatController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Alamat Tidak Boleh Kosong");
                                  print("Alamat tidak boleh kosong");
                                  return;
                                }
                                if (portofolioController.text.isEmpty) {
                                  EasyLoading.showError(
                                      "Portofolio Tidak Boleh Kosong");
                                  print("Portofolio tidak boleh kosong");
                                  return;
                                }
                                ModelSignUpClient.signupApiforClient(
                                        username: userNameController.text,
                                        nama: namaController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        jenis_kelamin:
                                            jenisKelaminController.text,
                                        nik: nikController.text,
                                        alamat: alamatController.text,
                                        portofolio: portofolioController.text)
                                    .then(
                                  (value) {
                                    // ModelSignUp data = value;
                                    print(value);
                                    if (value.status) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return LoginPageClient();
                                          },
                                        ),
                                      );
                                    } else
                                      () {
                                        print(value.status);
                                      };
                                    ;
                                  },
                                );
                              },
                              child: Container(
                                width: MediaQueryWidth * 0.5,
                                height: MediaQueryHeight * 0.1,
                                child: Center(
                                  child: Text(
                                    "SIGN UP",
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
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 110),
                              child: Text(
                                "Sudah punya akun?",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return LoginPageClient();
                                    },
                                  ));
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
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
