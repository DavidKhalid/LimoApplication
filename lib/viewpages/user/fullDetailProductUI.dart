import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/viewpages/user/formNegosiasiUIUser.dart';

class FullDetailProductUI extends StatefulWidget {
  final String title;
  final String keterangan;
  final String username;
  final String product_id;
  const FullDetailProductUI({
    Key? key,
    required this.title,
    required this.keterangan,
    required this.username,
    required this.product_id,
  }) : super(key: key);
  @override
  State<FullDetailProductUI> createState() => _FullDetailProductUIState();
}

class _FullDetailProductUIState extends State<FullDetailProductUI> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final BodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.all(15),
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.username,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // height: BodyHeight,
                  child: Text(
                    widget.keterangan,
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQueryWidth,
                  height: 65,
                  color: Colors.white,
                )),
            Positioned(
              left: MediaQueryWidth / 4,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return FormNegosiasiUIUser(product_id: widget.product_id,);
                    },
                  ));
                },
                child: Container(
                  width: MediaQueryWidth * 0.5,
                  height: MediaQueryHeight * 0.06,
                  child: Center(
                    child: Text(
                      "HIRE NOW",
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
      ),
    );
  }
}
