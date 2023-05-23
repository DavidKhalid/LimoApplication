import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormNegosiasiWebUser extends StatefulWidget {
  @override
  State<FormNegosiasiWebUser> createState() => _FormNegosiasiWebUserState();
}

class _FormNegosiasiWebUserState extends State<FormNegosiasiWebUser> {
  TextEditingController titleController = TextEditingController();
  TextEditingController dateLineController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final BodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              width: MediaQueryWidth * 0.9,
              height: 60,
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: "Title ...",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              width: MediaQueryWidth * 0.9,
              height: 60,
              child: TextField(
                controller: dateLineController,
                decoration: InputDecoration(
                    hintText: "Dateline ...",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              width: MediaQueryWidth * 0.9,
              height: 60,
              child: TextField(
                controller: priceController,
                decoration: InputDecoration(
                    hintText: "Price ...",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              width: MediaQueryWidth * 0.9,
              height: BodyHeight * 0.41,
              child: TextField(
                textAlign: TextAlign.justify,
                maxLines: 12,
                controller: descriptionController,
                decoration: InputDecoration(
                    hintText: "Description ...",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Positioned(
              left: MediaQueryWidth / 4,
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQueryWidth * 0.5,
                  height: MediaQueryHeight * 0.06,
                  child: Center(
                    child: Text(
                      "SUBMIT NOW",
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
