import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FullDetailJobs extends StatefulWidget {
  final String title;
  final String price;
  final String keterangan;

  const FullDetailJobs({
    Key? key,
    required this.title,
    required this.price,
    required this.keterangan,
  }) : super(key: key);
  @override
  State<FullDetailJobs> createState() => _FullDetailJobsState();
}

class _FullDetailJobsState extends State<FullDetailJobs> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final BodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
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
                  "DATELINE",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                    fontSize: 20,
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
                  width: mediaQueryWidth,
                  height: 65,
                  color: Colors.white,
                )),
            Positioned(
              left: mediaQueryWidth / 4,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: mediaQueryWidth * 0.5,
                  height: mediaQueryHeight * 0.06,
                  child: Center(
                    child: Text(
                      "APPLY NOW",
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
