import 'package:flutter/material.dart';
import 'package:limoapplication/viewpages/user/productCategoriUI.dart';
import 'package:limoapplication/viewpages/user/productCategoriWeb.dart';
import 'package:limoapplication/viewpages/user/productCategoryAndroid.dart';
import 'package:limoapplication/viewpages/user/productCategoryHardAndSoft.dart';
import 'package:limoapplication/viewpages/user/trackingprogressuser.dart';

class HomeUser extends StatefulWidget {
  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
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
                    "David Khalid",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 200,
          ),
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
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
            decoration: BoxDecoration(
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
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    height: bodyHeight * 0.1,
                    width: mediaQueryWidth * 0.9,
                    child: Center(
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
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
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
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/ui_uxassets.png"),
                                  ),
                                  color: Colors.amber.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(
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
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/webassets.png"),
                                  ),
                                  color: Colors.red.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(
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
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/mobileassets.png"),
                                  ),
                                  color: Colors.blueGrey.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ProductCategoryHardwareAndSoftware();
                                  },
                                ));
                              },
                              child: Container(
                                width: mediaQueryWidth * 0.7,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/hardware_softwareassets.png"),
                                  ),
                                  color: Colors.green.shade500,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: mediaQueryWidth * 0.9,
                    height: bodyHeight * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, bottom: 10, left: 20),
                          child: Text(
                            "Great result so far!",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0, left: 20),
                          child: Text(
                            "Do you want to see full history",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "or send the message to this member?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
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
      ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Crontract",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return TrackingProgressUser();
                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  // color: Colors.grey.shade300,
                  width: mediaQueryWidth,
                  height: bodyHeight * 0.27,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "10.00",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      width: mediaQueryWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Color(0xFFFA7A35).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              "Mobile App Prototype",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "make mobile app",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
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
              Container(
                margin: EdgeInsets.all(20),
                // color: Colors.grey.shade300,
                width: mediaQueryWidth,
                height: bodyHeight * 0.27,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "10.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth * 0.75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA7A35).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            "Mobile App Prototype",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "make mobile app",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
                thickness: 3,
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(20),
                // color: Colors.grey.shade300,
                width: mediaQueryWidth,
                height: bodyHeight * 0.27,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "10.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth * 0.75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA7A35).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            "Mobile App Prototype",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "make mobile app",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
                thickness: 3,
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(20),
                // color: Colors.grey.shade300,
                width: mediaQueryWidth,
                height: bodyHeight * 0.27,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "10.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth * 0.75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA7A35).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            "Mobile App Prototype",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "make mobile app",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
                thickness: 3,
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(20),
                // color: Colors.grey.shade300,
                width: mediaQueryWidth,
                height: bodyHeight * 0.27,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "10.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth * 0.75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA7A35).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            "Mobile App Prototype",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "make mobile app",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
                thickness: 3,
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(20),
                // color: Colors.grey.shade300,
                width: mediaQueryWidth,
                height: bodyHeight * 0.27,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "10.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth * 0.75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA7A35).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            "Mobile App Prototype",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "make mobile app",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
                  ),
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
          ),
        ],
      ),
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
                        child: Text("David Khalid"),
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
                        child: Text("khaliddavid952@gmail.com"),
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
                        child: Text("Laki-laki"),
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
                        child: Text("123456789"),
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
                        child: Text("Karang Rejo, Bireuen"),
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
                        child: Text("www.davidmyprofile.com"),
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
                        child: Text("DavidK"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("1234567"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
