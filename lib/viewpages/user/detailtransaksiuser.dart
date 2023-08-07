import 'package:flutter/material.dart';
import 'package:limoapplication/model/modeltransaksi/modelsingle/listtransaksi.dart';
import 'package:limoapplication/model/modeluser/modelloginuser.dart';

class DetailTransaksiUser extends StatefulWidget {
  final String id_transaksi;

  const DetailTransaksiUser({
    Key? key,
    required this.id_transaksi,
  }) : super(key: key);

  @override
  State<DetailTransaksiUser> createState() => _DetailTransaksiUserState();
}

class _DetailTransaksiUserState extends State<DetailTransaksiUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Transaksi",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: FutureBuilder<ModelTransaksiSingleList>(
          future: ModelTransaksiSingleList.getsingletransaksi(
              id_transaksi: widget.id_transaksi.toString()),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                print('Waiting...');
                return const Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  print(
                      "Error, Data not Found :" + snapshot.hasError.toString());
                  return const Center(child: Text("Error, Data not Found"));
                } else {
                  print("Data Founded");
                  // return const Text("data  found");
                  return ListView(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "ID Transaksi : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  snapshot.data!.data![0].id_transksi
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Resi : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  snapshot.data!.data![0].resi.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Product Name : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].productName
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Price : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].price.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Status : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].status.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Catatan : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].catatan.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Link : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].link.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            color: Colors.black,
                            thickness: 3,
                            height: 5,
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "ID Nego : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_id.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Product Name : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_productName
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Price Awal : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_price_awal
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "Price : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_price
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "User : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_user
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "Client : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_client
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "Status : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_status
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "Deadline : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_deadline
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  "Description : ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 10, 0, 0),
                                  child: Text(
                                    maxLines: 10,
                                    snapshot.data!.data![0].nego_description
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ]);
                }
            }
          }),

      // body: ListView(
      //   children: [
      //     Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      //         child: Row(
      //           children: [
      //             Text(
      //               "ID Transaksi : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //             Text(
      //               "2",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.normal),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //         child: Row(
      //           children: [
      //             Text(
      //               "Resi : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //             Text(
      //               "2/1/MD/parman/sandy",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.normal),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      //             child: Text(
      //               "Product Name : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "Aplikasi Mobile Ecommerce Murah Meriah",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //             child: Text(
      //               "Price : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "2500000",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //             child: Text(
      //               "Status : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "2",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Divider(
      //         indent: 20,
      //         endIndent: 20,
      //         color: Colors.black,
      //         thickness: 3,
      //         height: 5,
      //       ),
      //       SizedBox(height: 30),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //             child: Text(
      //               "ID Nego : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "2",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //             child: Text(
      //               "Product Name : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "Aplikasi Mobile Ecommerce Murah Meriah",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //             child: Text(
      //               "Price Awal : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "8000000",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "Price : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "2500000",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "User : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "Parman",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "Client : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "Sandy",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "Status : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "diterima",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "Deadline : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "2023-06-18 22:36:50.001721",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      //             child: Text(
      //               "Description : ",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
      //               child: Text(
      //                 maxLines: 10,
      //                 "tolong diselesaikan sesuai deadline",
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ]),
      //   ],
      // ),
    );
  }
}
