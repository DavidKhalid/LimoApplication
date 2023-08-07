import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrackingProgressUser extends StatefulWidget {
  final String id_nego;
  final String id_status;

  const TrackingProgressUser({
    Key? key,
    required this.id_nego,
    required this.id_status,
  }) : super(key: key);

  @override
  State<TrackingProgressUser> createState() => _TrackingProgressUserState();
}

class _TrackingProgressUserState extends State<TrackingProgressUser> {
  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: (kondisi) ? true: false,
        appBar: AppBar(
            leading: GestureDetector(
                child: const Icon(Icons.arrow_back_ios_new),
                onTap: () => Navigator.of(context).pop())),
        body: Stack(children: [
          (widget.id_status ==
                  "0") // clinet udah terima project dan membutuhkan pembayaran dari user
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Nama : "),
                      const Text("Nomor Rekening : "),
                      Container(
                        width: mediaqueryWidth * 0.5,
                        height: mediaqueryHeight * 0.5,
                        decoration: const BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://qrcg-free-editor.qr-code-generator.com/main/assets/images/websiteQRCode_noFrame.png"))),
                      )
                    ],
                  ),
                )
              : (widget.id_status ==
                      "1") // pembayaran sudah diterima dan diproved admin, dan project dikerjakan. note penting tracking project step step tidak jadi dipakai.
                  ? const Center(
                      child: Text(
                          "Pembayaran telah selesai dan project sedang dikerjakan"))
                  : Column(
                      children: const [
                        Text("Transaksi selesai"),
                        Text("ini untuk catatan"),
                        Text("ini untuk link")
                      ],
                    )
        ]),
        // body: Column(
        //   children: [
        //     SizedBox(
        //       height: 45,
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           widget.id_nego,
        //           style: TextStyle(
        //               fontSize: 24,
        //               color: Colors.black,
        //               fontWeight: FontWeight.bold),
        //         )
        //       ],
        //     ),
        //     SizedBox(
        //       height: 25,
        //     ),
        //     Container(
        //       height: mediaqueryHeight * 0.75,
        //       child: ListView.builder(
        //         itemCount:
        //             20, // Replace with the actual number of items you want to display
        //         itemBuilder: (context, index) {
        //           return Padding(
        //             padding: const EdgeInsets.symmetric(
        //                 vertical: 8.0, horizontal: 16.0),
        //             child: Row(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   "${index + 1}", // Add the item number to the left of the vertical line
        //                   style: TextStyle(
        //                     color: Colors.grey,
        //                     fontSize: 14.0,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //                 SizedBox(width: 16.0),
        //                 Container(
        //                   height: 40,
        //                   width: 2,
        //                   color: Colors.grey,
        //                   margin: EdgeInsets.only(right: 16.0),
        //                 ),
        //                 Expanded(
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         "May 5, 2023", // Replace with the actual date
        //                         style: TextStyle(
        //                           color: Colors.grey,
        //                           fontSize: 14.0,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                       SizedBox(height: 8.0),
        //                       Text(
        //                         "Title Line", // Replace with the actual title
        //                         style: TextStyle(
        //                           fontSize: 18.0,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 Icon(
        //                   Icons
        //                       .check_circle, // Replace with the actual icon you want to use
        //                   color: Colors.grey,
        //                 ),
        //               ],
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Container(
        //           margin: EdgeInsets.only(top: 20),
        //           width: mediaqueryWidth * 0.3,
        //           height: mediaqueryHeight * 0.07,
        //           child: Center(
        //             child: Text(
        //               "NO",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           decoration: BoxDecoration(
        //               color: Color(0xFFFA7A35),
        //               borderRadius: BorderRadius.circular(20)),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(top: 20),
        //           width: mediaqueryWidth * 0.3,
        //           height: mediaqueryHeight * 0.07,
        //           child: Center(
        //             child: Text(
        //               "Yes",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           decoration: BoxDecoration(
        //               color: Color(0xFFFA7A35),
        //               borderRadius: BorderRadius.circular(20)),
        //         ),
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
  }
}
