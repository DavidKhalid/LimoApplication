import 'package:flutter/material.dart';
import 'package:limoapplication/model/modelproduct/modelproduct.dart';
import 'package:limoapplication/viewpages/user/fullDetailProductUI.dart';

class ProductCatergoryUI extends StatefulWidget {
  @override
  State<ProductCatergoryUI> createState() => _ProductCatergoryUIState();
}

class _ProductCatergoryUIState extends State<ProductCatergoryUI> {
  late Future<ModelProduct> product;

  @override
  void initState() {
    super.initState();
    product = ModelProduct.getProductUI();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final BodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  // color: Colors.blueGrey,
                  width: MediaQueryWidth,
                  height: BodyHeight,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/wave.png"))),
                ),
                Container(
                  height: BodyHeight,
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
                      FutureBuilder<ModelProduct>(
                          future: product,
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                print('Waiting...');
                                print(snapshot.data);
                                return const Center(
                                    child: CircularProgressIndicator());
                              default:
                                if (snapshot.hasError) {
                                  print("Error, Data not Found :" +
                                      snapshot.hasError.toString());
                                  return const Center(
                                      child: Text("Error, Data not Found"));
                                } else {
                                  print("Data Founded");

                                  return Container(
                                    height: BodyHeight,
                                    child: ListView.builder(
                                        itemCount: snapshot.data!.data!.length,
                                        shrinkWrap: true,
                                        itemBuilder: (ctx, index) {
                                          print(snapshot);
                                          return Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                width: MediaQueryWidth * 8,
                                                height: BodyHeight * 0.2,
                                                decoration: BoxDecoration(
                                                  color: Colors
                                                      .blueGrey.shade100
                                                      .withOpacity(0.6),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  children: [
                                                    ListTile(
                                                      contentPadding:
                                                          EdgeInsets.all(10),
                                                      leading: CircleAvatar(),
                                                      title: Text(
                                                        snapshot
                                                            .data!
                                                            .data![index]
                                                            .productName
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      subtitle: Text(
                                                        snapshot
                                                            .data!
                                                            .data![index]
                                                            .username
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      trailing: GestureDetector(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                                    MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                                return FullDetailProductUI(
                                                                  title: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .productName
                                                                      .toString(),
                                                                  keterangan: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .keterangan
                                                                      .toString(),
                                                                  username: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .username
                                                                      .toString(),
                                                                  product_id: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .id
                                                                      .toString(),
                                                                );
                                                              },
                                                            ));
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .arrow_circle_right_outlined,
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
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text.rich(
                                                            TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "Price : ",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                                TextSpan(
                                                                  text: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .price
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
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
                                            ],
                                          );
                                        }),
                                  );
                                  //
                                }
                            }
                          }),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        //
      ),
    );
  }
}
