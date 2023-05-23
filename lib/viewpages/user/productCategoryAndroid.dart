import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/viewpages/user/fullDetailProductAndroid.dart';

class ProductCategoryAndroid extends StatefulWidget {
  @override
  State<ProductCategoryAndroid> createState() => _ProductCategoryAndroidState();
}

class _ProductCategoryAndroidState extends State<ProductCategoryAndroid> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  // color: Colors.blueGrey,
                  width: mediaQueryWidth,
                  height: bodyHeight,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/wave.png"))),
                ),
                Container(
                  height: bodyHeight,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Freelancer",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: mediaQueryWidth * 8,
                        height: bodyHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: CircleAvatar(),
                              title: Text(
                                "UI/UX WEBSITE SEKOLAH",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Suparman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailProductAndroid();
                                      },
                                    ));
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 34,
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Colors.black87,
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: "Rp. 2.000.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: mediaQueryWidth * 8,
                        height: bodyHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: CircleAvatar(),
                              title: Text(
                                "UI/UX WEBSITE RUMAH SAKIT",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Suparman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailProductAndroid();
                                      },
                                    ));
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 34,
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Colors.black87,
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: "Rp. 2.000.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: mediaQueryWidth * 8,
                        height: bodyHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: CircleAvatar(),
                              title: Text(
                                "UI/UX WEBSITE PERKANTORAN",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Suparman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailProductAndroid();
                                      },
                                    ));
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 34,
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Colors.black87,
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: "Rp. 2.000.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: mediaQueryWidth * 8,
                        height: bodyHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: CircleAvatar(),
                              title: Text(
                                "UI/UX WEBSITE PERBANKAN",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Suparman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailProductAndroid();
                                      },
                                    ));
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 34,
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Colors.black87,
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: "Rp. 2.000.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: mediaQueryWidth * 8,
                        height: bodyHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: CircleAvatar(),
                              title: Text(
                                "UI/UX WEBSITE COFFEE SHOP",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Suparman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return FullDetailProductAndroid();
                                      },
                                    ));
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 34,
                                  )),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Colors.black87,
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price : ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: "Rp. 2.000.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
