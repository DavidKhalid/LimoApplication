import 'package:flutter/material.dart';

class PendingPage extends StatefulWidget {
  const PendingPage({
    Key? key,
  }) : super(key: key);
  @override
  State<PendingPage> createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
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
            "Mohon menunggu sampai request anda diterima",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
