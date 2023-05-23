import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FullDetailJobs extends StatefulWidget {
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
                  "TITLE ORDERAN",
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
                  "PRICE",
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
