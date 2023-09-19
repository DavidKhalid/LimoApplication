import 'package:flutter/material.dart';
import 'package:limoapplication/viewpages/signupclient.dart';
import 'package:limoapplication/viewpages/loginclient.dart';
import 'package:limoapplication/viewpages/signupuser.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    // final bodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: MediaQueryWidth,
              height: MediaQueryHeight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFA7A35), Color(0xFFFFFFFF)])),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // Image 1
                  margin: EdgeInsets.only(top: 0, left: 30),
                  width: 110,
                  height: 90,
                  //color: Colors.green,
                  child: Image.asset(
                    "assets/images/limowhite.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  // Teks 1
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Layanan IT",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  // Teks 2
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Untuk Kota Lhokseumawe",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  // Image Utama 1
                  margin: EdgeInsets.only(top: 5, left: 50),
                  width: 300,
                  height: 300,
                  //color: Colors.white70,
                  child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/images/marketingtop.png")),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return SignUpClient();
                              },
                            ));
                          },
                          child: Container(
                            // Image Utama 2
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/images/amicoleft.png")),
                                color: Color(0xFFFA7A35),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          child: Center(
                            child: Text(
                              "Jadi Freelancer",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF35FA42),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return SignUpUser();
                              },
                            ));
                          },
                          child: Container(
                            // Image Utama 2
                            width: 170,
                            height: 150,
                            child: Image(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage("assets/images/customerright.png"),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFFA7A35),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          child: Center(
                            child: Text(
                              "Cari Layanan",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF35FA42),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
