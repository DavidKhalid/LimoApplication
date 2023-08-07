import 'package:flutter/material.dart';

class TolakPage extends StatefulWidget {
  const TolakPage({
    Key? key,
  }) : super(key: key);
  @override
  State<TolakPage> createState() => _TolakPageState();
}

class _TolakPageState extends State<TolakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA7A35),
        centerTitle: true,
        title: Text(
          "Pending Transaction",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "Request anda ditolak",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
