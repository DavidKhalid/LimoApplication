import 'package:flutter/material.dart';
import 'package:limoapplication/model/modelnego.,dart/modelnego.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:limoapplication/main.dart';
// import 'package:limoapplication/model/modelnego.dart/modelnego.dart';
import 'package:limoapplication/model/modeltransaksi/modeltransaksi.dart';
import 'package:limoapplication/model/session_manager.dart';
import 'package:limoapplication/viewpages/client/addproduct.dart';
import 'package:limoapplication/viewpages/client/fullDetailJobs.dart';
import 'package:limoapplication/model/modelproduct/modelproduct.dart';
import 'package:limoapplication/viewpages/loginclient.dart';
import 'package:limoapplication/viewpages/loginuser.dart';
import 'package:limoapplication/viewpages/user/homeuser.dart';
import 'package:limoapplication/viewpages/client/trackingprogressclient.dart';
import 'package:limoapplication/viewpages/user/trackingprogressuser.dart';

class HomeClient extends StatefulWidget {
  // final String id_status;
  final String statusproduct;

  const HomeClient({
    Key? key,
    // required this.id_status,
    required this.statusproduct,
  }) : super(key: key);

  @override
  State<HomeClient> createState() => _HomeClientState();
}

class _HomeClientState extends State<HomeClient> {
  SessionManager sessionManager = SessionManager();
  String username = "";
  String nama = "";
  String email = "";
  String jenis_kelamin = "";
  String nik = "";
  String alamat = "";
  String portofolio = "";

  int number = 0;

  late Future<ModelProduct> product;
  late Future<ModelNego> nego;

  @override
  void initState() {
    super.initState(); // pada initstate perintahnya dijalankan baris perbaris
    Future<String> getUsername = sessionManager.getUsername();
    getUsername.then((value) {
      setState(() {
        username = value;
      });
    });
    // product = ModelProduct.getProductByUsername(
    //     username:
    //         username); // value masih statis belum bisa dinamis, jika ingin product sesuai dengan yang login sebagai client, value username masih harus diisi manual

    nego = ModelNego.getDataNegoClient(username: username, role: "client");

    Future<String> getNama = sessionManager.getNama();
    getNama.then((value) {
      setState(() {
        nama = value;
      });
    });

    Future<String> getEmail = sessionManager.getEmail();
    getEmail.then((value) {
      setState(() {
        email = value;
      });
    });

    Future<String> getJenis_kelamin = sessionManager.getJenis_Kelamin();
    getJenis_kelamin.then((value) {
      setState(() {
        jenis_kelamin = value;
      });
    });

    Future<String> getNik = sessionManager.getNik();
    getNik.then((value) {
      setState(() {
        nik = value;
      });
    });

    Future<String> getAlamat = sessionManager.getAlamat();
    getAlamat.then((value) {
      setState(() {
        alamat = value;
      });
    });

    Future<String> getPortofolio = sessionManager.getPortofolio();
    getPortofolio.then((value) {
      setState(() {
        portofolio = value;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppbar = AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFA7A35),
            Color(0xFFFFFFFF),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
      ),
      title: Row(
        children: [
          Container(
            width: MediaQueryWidth * 0.12,
            height: MediaQueryHeight * 0.10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/id/235/200/300"),
              ),
            ),
          ),
          SizedBox(
            width: 130,
          ),
          Text(
            "Jobs",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return AddProduct();
              },
            ));
          },
          child: Icon(
            Icons.add_circle,
            size: 30,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
    final BodyHeight = MediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    List<dynamic> showPage = [
      Stack(
        children: [
          Container(
            width: MediaQueryWidth,
            height: BodyHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFA7A35),
                  Color(0xFFFFFFFF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          FutureBuilder<ModelProduct>(
              future: ModelProduct.getProductByUsername(username: username),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    print('Waiting...');
                    return const Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      print("Error, Data not Found :" +
                          snapshot.hasError.toString());
                      return const Center(child: Text("Error, Data not Found"));
                    } else {
                      print("Data Founded");

                      // if (snapshot.data!.data!.length != null) {
                      //   print(snapshot.data);
                      // }
                      if (snapshot.data!.data!.length == 0) {
                        return Center(
                            child: Text(
                          "No Content",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ));
                      }
                      return ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          print(snapshot);
                          return Stack(
                            children: [
                              Column(
                                // pakai futurebuilder mulai dari sini
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(20),
                                    width: MediaQueryWidth * 8,
                                    height: BodyHeight * 0.25,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFA7A35).withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              snapshot.data!.data![index]
                                                  .productName
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.5),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              snapshot
                                                  .data!.data![index].keterangan
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  height: 1.5),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 20),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                      builder: (context) {
                                                        return FullDetailJobs(
                                                          title: snapshot
                                                              .data!
                                                              .data![index]
                                                              .productName
                                                              .toString(),
                                                          price: snapshot
                                                              .data!
                                                              .data![index]
                                                              .price
                                                              .toString(),
                                                          keterangan: snapshot
                                                              .data!
                                                              .data![index]
                                                              .keterangan
                                                              .toString(),
                                                        );
                                                      },
                                                    ));
                                                  },
                                                  child: Text(
                                                    "Read more ...",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              (snapshot.data!.data![index]
                                                          .statusproduct
                                                          .toString() ==
                                                      "0")
                                                  ? Text("Pending")
                                                  : (snapshot.data!.data![index]
                                                              .statusproduct
                                                              .toString() ==
                                                          "1")
                                                      ? Text("Accepted")
                                                      : Text("Rejected")
                                              // Text(snapshot.data!.data![index]
                                              //     .statusproduct
                                              //     .toString())
                                            ],
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          );

                          // : Column(
                          //     // pakai futurebuilder mulai dari sini
                          //     children: [
                          //       Container(
                          //         margin: EdgeInsets.all(20),
                          //         width: MediaQueryWidth * 8,
                          //         height: BodyHeight * 0.25,
                          //         decoration: BoxDecoration(
                          //           color: Color(0xFFFA7A35)
                          //               .withOpacity(0.6),
                          //           borderRadius:
                          //               BorderRadius.circular(20),
                          //         ),
                          //         child: Column(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.start,
                          //             children: [
                          //               Padding(
                          //                 padding:
                          //                     const EdgeInsets.all(10),
                          //                 child: Text(
                          //                   snapshot.data!.data![index]
                          //                       .productName
                          //                       .toString(),
                          //                   style: TextStyle(
                          //                       fontSize: 16,
                          //                       color: Colors.black,
                          //                       fontWeight:
                          //                           FontWeight.bold,
                          //                       height: 1.5),
                          //                 ),
                          //               ),
                          //               Padding(
                          //                 padding:
                          //                     const EdgeInsets.all(10),
                          //                 child: Text(
                          //                   overflow:
                          //                       TextOverflow.ellipsis,
                          //                   maxLines: 2,
                          //                   snapshot.data!.data![index]
                          //                       .keterangan
                          //                       .toString(),
                          //                   style: TextStyle(
                          //                       fontSize: 14,
                          //                       color: Colors.black,
                          //                       height: 1.5),
                          //                 ),
                          //               ),
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment
                          //                         .spaceEvenly,
                          //                 children: [
                          //                   Padding(
                          //                     padding:
                          //                         const EdgeInsets.only(
                          //                             right: 20),
                          //                     child: GestureDetector(
                          //                       onTap: () {
                          //                         Navigator.of(context)
                          //                             .push(
                          //                                 MaterialPageRoute(
                          //                           builder: (context) {
                          //                             return FullDetailJobs(
                          //                               title: snapshot
                          //                                   .data!
                          //                                   .data![
                          //                                       index]
                          //                                   .productName
                          //                                   .toString(),
                          //                               price: snapshot
                          //                                   .data!
                          //                                   .data![
                          //                                       index]
                          //                                   .price
                          //                                   .toString(),
                          //                               keterangan: snapshot
                          //                                   .data!
                          //                                   .data![
                          //                                       index]
                          //                                   .keterangan
                          //                                   .toString(),
                          //                             );
                          //                           },
                          //                         ));
                          //                       },
                          //                       child: Text(
                          //                         "Read more ...",
                          //                         style: TextStyle(
                          //                             color:
                          //                                 Colors.black,
                          //                             fontSize: 12,
                          //                             fontWeight:
                          //                                 FontWeight
                          //                                     .bold),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                   Text("Ditolak")
                          //                 ],
                          //               )
                          //             ]),
                          //       ),
                          //     ],
                          //   );
                        },
                      );
                      //
                    }
                }
              }),
        ],
      ),
      // ListView(
      //   children: [
      //     Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 15),
      //               child: Text(
      //                 "Crontract",
      //                 style: TextStyle(
      //                     fontSize: 22,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //             )
      //           ],
      //         ),
      //         GestureDetector(
      //           onTap: () {
      //             Navigator.of(context).push(MaterialPageRoute(
      //               builder: (context) {
      //                 return TrackingProgressClient();
      //               },
      //             ));
      //           },
      //           child: Container(
      //             margin: EdgeInsets.all(20),
      //             color: Colors.grey.shade300,
      //             width: MediaQueryWidth,
      //             height: BodyHeight * 0.27,
      //             child: Row(children: [
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 10, right: 10),
      //                 child: Text(
      //                   "10.00",
      //                   style: TextStyle(
      //                       fontSize: 15,
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.w500),
      //                 ),
      //               ),
      //               Container(
      //                 width: MediaQueryWidth * 0.75,
      //                 decoration: BoxDecoration(
      //                   color: Color(0xFFFA7A35).withOpacity(0.9),
      //                   borderRadius: BorderRadius.circular(30),
      //                 ),
      //                 child: Column(children: [
      //                   ListTile(
      //                     title: Padding(
      //                       padding: const EdgeInsets.only(top: 35),
      //                       child: Text(
      //                         "Mobile App Prototype",
      //                         style: TextStyle(
      //                             fontSize: 15,
      //                             color: Colors.black,
      //                             fontWeight: FontWeight.bold),
      //                       ),
      //                     ),
      //                     subtitle: Padding(
      //                       padding: const EdgeInsets.only(top: 15),
      //                       child: Text(
      //                         "make mobile app",
      //                         style: TextStyle(
      //                             fontSize: 15,
      //                             color: Colors.black,
      //                             fontWeight: FontWeight.w400),
      //                       ),
      //                     ),
      //                   ),
      //                 ]),
      //               )
      //             ]),
      //           ),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(20),
      //           // color: Colors.grey.shade300,
      //           width: MediaQueryWidth,
      //           height: BodyHeight * 0.27,
      //           child: Row(children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 10, right: 10),
      //               child: Text(
      //                 "10.00",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             Container(
      //               width: MediaQueryWidth * 0.75,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFFFA7A35).withOpacity(0.9),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Column(children: [
      //                 ListTile(
      //                   title: Padding(
      //                     padding: const EdgeInsets.only(top: 35),
      //                     child: Text(
      //                       "Mobile App Prototype",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                   subtitle: Padding(
      //                     padding: const EdgeInsets.only(top: 15),
      //                     child: Text(
      //                       "make mobile app",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ]),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(20),
      //           // color: Colors.grey.shade300,
      //           width: MediaQueryWidth,
      //           height: BodyHeight * 0.27,
      //           child: Row(children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 10, right: 10),
      //               child: Text(
      //                 "10.00",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             Container(
      //               width: MediaQueryWidth * 0.75,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFFFA7A35).withOpacity(0.9),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Column(children: [
      //                 ListTile(
      //                   title: Padding(
      //                     padding: const EdgeInsets.only(top: 35),
      //                     child: Text(
      //                       "Mobile App Prototype",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                   subtitle: Padding(
      //                     padding: const EdgeInsets.only(top: 15),
      //                     child: Text(
      //                       "make mobile app",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ]),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(20),
      //           // color: Colors.grey.shade300,
      //           width: MediaQueryWidth,
      //           height: BodyHeight * 0.27,
      //           child: Row(children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 10, right: 10),
      //               child: Text(
      //                 "10.00",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             Container(
      //               width: MediaQueryWidth * 0.75,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFFFA7A35).withOpacity(0.9),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Column(children: [
      //                 ListTile(
      //                   title: Padding(
      //                     padding: const EdgeInsets.only(top: 35),
      //                     child: Text(
      //                       "Mobile App Prototype",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                   subtitle: Padding(
      //                     padding: const EdgeInsets.only(top: 15),
      //                     child: Text(
      //                       "make mobile app",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ]),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(20),
      //           // color: Colors.grey.shade300,
      //           width: MediaQueryWidth,
      //           height: BodyHeight * 0.27,
      //           child: Row(children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 10, right: 10),
      //               child: Text(
      //                 "10.00",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             Container(
      //               width: MediaQueryWidth * 0.75,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFFFA7A35).withOpacity(0.9),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Column(children: [
      //                 ListTile(
      //                   title: Padding(
      //                     padding: const EdgeInsets.only(top: 35),
      //                     child: Text(
      //                       "Mobile App Prototype",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                   subtitle: Padding(
      //                     padding: const EdgeInsets.only(top: 15),
      //                     child: Text(
      //                       "make mobile app",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ]),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(20),
      //           // color: Colors.grey.shade300,
      //           width: MediaQueryWidth,
      //           height: BodyHeight * 0.27,
      //           child: Row(children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 10, right: 10),
      //               child: Text(
      //                 "10.00",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             Container(
      //               width: MediaQueryWidth * 0.75,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFFFA7A35).withOpacity(0.9),
      //                 borderRadius: BorderRadius.circular(30),
      //               ),
      //               child: Column(children: [
      //                 ListTile(
      //                   title: Padding(
      //                     padding: const EdgeInsets.only(top: 35),
      //                     child: Text(
      //                       "Mobile App Prototype",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                   subtitle: Padding(
      //                     padding: const EdgeInsets.only(top: 15),
      //                     child: Text(
      //                       "make mobile app",
      //                       style: TextStyle(
      //                           fontSize: 15,
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ]),
      //         ),
      //         Divider(
      //           indent: 20,
      //           endIndent: 20,
      //           color: Colors.black,
      //           thickness: 3,
      //           height: 5,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      FutureBuilder<ModelNego>(
          future:
              ModelNego.getDataNegoClient(username: username, role: "client"),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                print('Waiting...');
                return const Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  print(
                      "Error, Data not Found :" + snapshot.hasError.toString());
                  return const Center(child: Text("Error, Data not Found"));
                } else {
                  print("Data Founded");
                  print(username);
                  print("penanda");
                  if (snapshot.data!.data!.length == 0) {
                    return Center(
                        child: Text(
                      "Belum Ada Transaksi Nego Client",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ));
                  }

                  return ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      print(snapshot);
                      return Column(
                        children: [
                          Container(
                            // color: Colors.green,
                            margin: EdgeInsets.all(20),
                            width: MediaQueryWidth,
                            height: BodyHeight * 0.3,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQueryWidth * 0.75,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFA7A35).withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(children: [
                                      ListTile(
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 35),
                                          child: Text(
                                            snapshot
                                                .data!.data![index].productName
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        subtitle: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Text(
                                            snapshot
                                                .data!.data![index].description
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      (snapshot.data!.data![index].status ==
                                              "pending")
                                          ? Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                GestureDetector(
                                                  // ini belum selesai
                                                  onTap: () {
                                                    print(snapshot
                                                        .data!.data![index].id);
                                                    ModelNego.endNegoDiterima(
                                                            id_nego: snapshot
                                                                .data!
                                                                .data![index]
                                                                .id
                                                                .toString(),
                                                            status: "diterima")
                                                        .then((value) {
                                                      ModelNego modelNego =
                                                          value;
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
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
                                                    margin: EdgeInsets.only(
                                                        top: 18),
                                                    width:
                                                        MediaQueryWidth * 0.2,
                                                    height:
                                                        MediaQueryHeight * 0.04,
                                                    child: Center(
                                                      child: Text(
                                                        "TERIMA",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFFFA7A35),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    print(snapshot
                                                        .data!.data![index].id);
                                                    ModelNego.endNegoDitolak(
                                                            id_nego: snapshot
                                                                .data!
                                                                .data![index]
                                                                .id
                                                                .toString(),
                                                            status: "ditolak")
                                                        .then((value) {
                                                      ModelNego modelNego =
                                                          value;
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
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
                                                    margin: EdgeInsets.only(
                                                        top: 15),
                                                    width:
                                                        MediaQueryWidth * 0.2,
                                                    height:
                                                        MediaQueryHeight * 0.04,
                                                    child: Center(
                                                      child: Text(
                                                        "TOLAK",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFFFA7A35),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : (snapshot.data!.data![index]
                                                      .status ==
                                                  "ditolak")
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 50),
                                                  child: Container(
                                                    width: 150,
                                                    height: 20,
                                                    child: Center(
                                                      child: Text(
                                                        "NEGO DITOLAK",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFFFA7A35),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 50),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      ModelTransaksi.trackingstatus(
                                                              id_nego: snapshot
                                                                  .data!
                                                                  .data![index]
                                                                  .id
                                                                  .toString())
                                                          .then((value) {
                                                        Navigator.of(context)
                                                            .push(
                                                                MaterialPageRoute(
                                                          builder: (context) {
                                                            return TrackingProgressClient(
                                                              id_transaksi: value
                                                                  .data![0]
                                                                  .id_transksi
                                                                  .toString(),
                                                              status: value
                                                                  .data![0]
                                                                  .status
                                                                  .toString(),
                                                            );
                                                          },
                                                        ));
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 150,
                                                      height: 20,
                                                      child: Center(
                                                        child: Text(
                                                          "DITERIMA",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                  0xFFFA7A35)),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                    ]),
                                  )
                                ]),
                          ),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            color: Colors.black,
                            thickness: 3,
                            height: 5,
                          ),
                        ],
                      );
                    },
                  );
                  //
                }
            }
          }),
      Stack(
        children: [
          Image(
            width: MediaQueryWidth,
            fit: BoxFit.cover,
            image: AssetImage("assets/images/wave.png"),
          ),
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Nama"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(nama),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(email),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Jenis Kelamin"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(jenis_kelamin),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("NIK"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(nik),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Alamat"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(alamat),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Portofolio"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(portofolio),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Username"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(username),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            left: 140,
            bottom: 7,
            child: GestureDetector(
              onTap: () {
                sessionManager.logout();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return LoginPageClient();
                  },
                ));
              },
              child: Container(
                width: MediaQueryWidth * 0.3,
                height: BodyHeight * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFA7A35),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppbar,
        body: showPage[number],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFFA7A35),
          unselectedItemColor: Colors.black,
          iconSize: 25,
          currentIndex: number,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (value) {
            setState(() {
              number = value;
            });
          },
        ),
      ),
    );
  }
}
