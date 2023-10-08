import 'package:flutter/material.dart';
import 'package:limoapplication/model/modelnego.,dart/modelnego.dart';
import 'package:limoapplication/model/modeltransaksi/modeltransaksi.dart';
// import 'package:limoapplication/model/session_managerUser.dart';
import 'package:limoapplication/model/session_manager.dart';
import 'package:limoapplication/viewpages/loginuser.dart';
import 'package:limoapplication/viewpages/user/detailtransaksiuser.dart';
import 'package:limoapplication/viewpages/user/pendingpage.dart';
import 'package:limoapplication/viewpages/user/productCategoriUI.dart';
import 'package:limoapplication/viewpages/user/productCategoriWeb.dart';
import 'package:limoapplication/viewpages/user/productCategoryAndroid.dart';
import 'package:limoapplication/viewpages/user/tolakpage.dart';
import 'package:limoapplication/viewpages/user/trackingprogressuser.dart';
import 'package:limoapplication/model/modelproduct/modelproduct.dart';

class HomeUser extends StatefulWidget {
  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  SessionManager sessionManager = SessionManager();
  String username = "";

  int number = 0;

  late Future<ModelProduct> product;
  late Future<ModelNego> nego;

  @override
  void initState() {
    super.initState();
    product = ModelProduct.getSingleDataByUsername();
    Future<String> getUsername = sessionManager.getUsername();
    getUsername.then((value) {
      setState(() {
        username = value;
      });
    });

    // nego = ModelNego.getDataNegoUser();

    // Future<String> getUsernameUser = sessionManager.getUsernameUser();
    // getUsernameUser.then((value) {
    //   setState(() {
    //     getUsernameUser = value as Future<String>;
    //   });
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFA7A35),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      "Welcome Back,",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 200,
          ),
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/10/200/300")),
                    color: Colors.amber,
                    shape: BoxShape.circle),
              )
            ],
          )
        ],
      ),
    );
    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    List<dynamic> showPage = [
      Stack(
        children: [
          Container(
            width: mediaQueryWidth,
            height: bodyHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFA7A35), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    height: bodyHeight * 0.1,
                    width: mediaQueryWidth * 0.9,
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30,
                            color: Colors.black54,
                          ),
                          hintText: "Find service...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: mediaQueryWidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ProductCatergoryUI();
                                  },
                                ));
                              },
                              child: Container(
                                width: mediaQueryWidth * 0.7,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/ui_uxassets.png"),
                                  ),
                                  color: Colors.amber.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ProductCategoryWeb();
                                  },
                                ));
                              },
                              child: Container(
                                width: mediaQueryWidth * 0.7,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/webassets.png"),
                                  ),
                                  color: Colors.red.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ProductCategoryAndroid();
                                  },
                                ));
                              },
                              child: Container(
                                width: mediaQueryWidth * 0.7,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/mobileassets.png"),
                                  ),
                                  color: Colors.blueGrey.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: mediaQueryWidth * 0.9,
                    height: bodyHeight * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 50, bottom: 10, left: 20),
                          child: Center(
                            child: Text(
                              "ALL THE PROBLEM YOU HAVE",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 20),
                          child: Center(
                            child: Text(
                              "LIMO IS THE SOLUTION",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      FutureBuilder<ModelNego>(
          future: ModelNego.getDataNegoUser(username: username),
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

                  if (snapshot.data!.data!.length == 0) {
                    return Center(
                        child: Text(
                      "Belum Ada Transaksi Nego User",
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
                      print(snapshot.data!.data![index]);
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("id nego:");
                              print(snapshot.data!.data![index].id.toString());
                              if (snapshot.data!.data![index].status
                                      .toString() ==
                                  "pending") {
                                print("nego sedang pending"); // hapus baris ini
                                // return null; // hapus baris ini
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return PendingPage();
                                  },
                                ));
                                return;
                                // bikin satu halaman lagi untuk pending
                                // bikin satu navigator lagi yang kalau di click akan menuju ke halaman tolak
                                // untuk menampilkan status di tolak
                              }
                              ModelTransaksi.trackingstatus(
                                      id_nego: snapshot.data!.data![index].id
                                          .toString())
                                  .then((value) {
                                if (value.data!.isEmpty) {
                                  print(
                                      "transaksi di nego ini ditolak"); // hapus baris ini
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return TolakPage();
                                    },
                                  ));
                                  return;
                                  // bikin satu halaman lagi untuk tolak
                                  // bikin satu navigator lagi yang kalau di click akan menuju ke halaman tolak
                                  // untuk menampilkan status di tolak
                                }
                                ;
                                print("value");
                                print(value.data![0].id_transksi);
                                print(value.data![0].status);
                                if (value.data![0].status.toString() == "2") {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return DetailTransaksiUser(
                                        id_transaksi: value.data![0].id_transksi
                                            .toString(),
                                      );
                                    },
                                  ));
                                  return;
                                }
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return TrackingProgressUser(
                                      id_nego:
                                          value.data![0].id_transksi.toString(),
                                      id_status:
                                          value.data![0].status.toString(),
                                    );
                                  },
                                ));
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(20),
                              // color: Colors.grey.shade300,
                              width: mediaQueryWidth,
                              height: bodyHeight * 0.27,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: mediaQueryWidth * 0.75,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFFA7A35).withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Column(children: [
                                        ListTile(
                                          title: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 35),
                                            child: Text(
                                              snapshot.data!.data![index]
                                                  .productName
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
                                              snapshot.data!.data![index]
                                                  .description
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          trailing: (snapshot
                                                      .data!.data![index].status
                                                      .toString() ==
                                                  "ditolak")
                                              ? Icon(Icons.close,
                                                  color: Colors.red)
                                              : (snapshot.data!.data![index]
                                                          .status
                                                          .toString() ==
                                                      "done")
                                                  ? Icon(Icons.check,
                                                      color: Colors.green)
                                                  : Icon(
                                                      Icons.watch_later_sharp,
                                                      color: Colors.white),
                                        ),
                                      ]),
                                    )
                                  ]),
                            ),
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
            width: mediaQueryWidth,
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
                    return LoginPageUser();
                  },
                ));
              },
              child: Container(
                width: mediaQueryWidth * 0.3,
                height: bodyHeight * 0.06,
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
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar,
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
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          onTap: (value) {
            print(value);
            setState(() {
              number = value;
            });
          },
        ),
      ),
    );
  }
}
