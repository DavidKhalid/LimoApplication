import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/viewpages/user/formNegosiasiWebUser.dart';

class FullDetailProductWeb extends StatefulWidget {
  final String title;
  final String username;
  final String keterangan;
  const FullDetailProductWeb({
    Key? key,
    required this.title,
    required this.username,
    required this.keterangan,
  }) : super(key: key);

  @override
  State<FullDetailProductWeb> createState() => _FullDetailProductWebState();
}

class _FullDetailProductWebState extends State<FullDetailProductWeb> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final BodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      return FormNegosiasiWebUser();
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
