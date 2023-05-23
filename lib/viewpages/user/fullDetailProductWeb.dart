import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/viewpages/user/formNegosiasiWebUser.dart';

class FullDetailProductWeb extends StatefulWidget {
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
                  "UI/UX WEBSITE RUMAH SAKIT",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SUPARMAN",
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
                    "Contrary to popular belief, Lorem Ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Artikel ilmiah adalah laporan yang ditulis untuk memaparkan hasil penelitian, penyaduran, dan pemahaman yang dilakukan seseorang atau tim sesuai dengan kaidah dan etika keilmuan tertentu. Selain itu, artikel ilmiah merupakan salah satu bagian dari komunikasi dalam kehidupan akademik yang digunakan untuk jejaring penelitian di suatu tempat dengan tempat lain.Baca artikel detikbali, \"5 Contoh Artikel Ilmiah Singkat yang Benar untuk Tugas Kuliah\" selengkapnya https://www.detik.com/bali/berita/d-6558497/5-contoh-artikel-ilmiah-singkat-yan\g-benar-untuk-tugas-kuliah.Download Apps Detikcom Sekarang https://apps.detik.com/detik/. Contrary to popular belief, Lorem Ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Artikel ilmiah adalah laporan yang ditulis untuk memaparkan hasil penelitian, penyaduran, dan pemahaman yang dilakukan seseorang atau tim sesuai dengan kaidah dan etika keilmuan tertentu. Selain itu, artikel ilmiah merupakan salah satu bagian dari komunikasi dalam kehidupan akademik yang digunakan untuk jejaring penelitian di suatu tempat dengan tempat lain.Baca artikel detikbali, \"5 Contoh Artikel Ilmiah Singkat yang Benar untuk Tugas Kuliah\" selengkapnya https://www.detik.com/bali/berita/d-6558497/5-contoh-artikel-ilmiah-singkat-yan\g-benar-untuk-tugas-kuliah.Download Apps Detikcom Sekarang https://apps.detik.com/detik/. Contrary to popular belief, Lorem Ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Artikel ilmiah adalah laporan yang ditulis untuk memaparkan hasil penelitian, penyaduran, dan pemahaman yang dilakukan seseorang atau tim sesuai dengan kaidah dan etika keilmuan tertentu. Selain itu, artikel ilmiah merupakan salah satu bagian dari komunikasi dalam kehidupan akademik yang digunakan untuk jejaring penelitian di suatu tempat dengan tempat lain.Baca artikel detikbali, \"5 Contoh Artikel Ilmiah Singkat yang Benar untuk Tugas Kuliah\" selengkapnya https://www.detik.com/bali/berita/d-6558497/5-contoh-artikel-ilmiah-singkat-yan\g-benar-untuk-tugas-kuliah.Download Apps Detikcom Sekarang https://apps.detik.com/detik/. Contrary to popular belief, Lorem Ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.Artikel ilmiah adalah laporan yang ditulis untuk memaparkan hasil penelitian, penyaduran",
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
