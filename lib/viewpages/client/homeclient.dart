import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/main.dart';
import 'package:limoapplication/viewpages/client/fullDetailJobs.dart';
import 'package:limoapplication/viewpages/client/trackingProgressClient.dart';

class HomeClient extends StatefulWidget {
  @override
  State<HomeClient> createState() => _HomeClientState();
}

class _HomeClientState extends State<HomeClient> {
  int number = 0;
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
        Icon(
          Icons.more_vert,
          size: 30,
          color: Colors.black,
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
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQueryWidth * 8,
                    height: BodyHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Simple task(s) - Front-End Developer Animations (using Javascript/CSS/HTML)",
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
                              "Hello, I'm looking for a developer with knowledge in Javascript, CSS and HTML. Additionaly, the developer should be familiar with",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailJobs();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Read more ...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  )
                ],
              )
            ],
          ),
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
                      return TrackingProgressClient();
                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.grey.shade300,
                  width: MediaQueryWidth,
                  height: BodyHeight * 0.27,
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
                      width: MediaQueryWidth * 0.75,
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
                width: MediaQueryWidth,
                height: BodyHeight * 0.27,
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
                    width: MediaQueryWidth * 0.75,
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
                width: MediaQueryWidth,
                height: BodyHeight * 0.27,
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
                    width: MediaQueryWidth * 0.75,
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
                width: MediaQueryWidth,
                height: BodyHeight * 0.27,
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
                    width: MediaQueryWidth * 0.75,
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
                width: MediaQueryWidth,
                height: BodyHeight * 0.27,
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
                    width: MediaQueryWidth * 0.75,
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
                width: MediaQueryWidth,
                height: BodyHeight * 0.27,
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
                    width: MediaQueryWidth * 0.75,
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
