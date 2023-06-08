import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limoapplication/viewpages/user/fullDetailProductAndroid.dart';
import 'package:limoapplication/model/modelproduct/modelproduct.dart';

class ProductCategoryAndroid extends StatefulWidget {
  @override
  State<ProductCategoryAndroid> createState() => _ProductCategoryAndroidState();
}

class _ProductCategoryAndroidState extends State<ProductCategoryAndroid> {
  late Future<ModelProduct> product;

  @override
  void initState() {
    super.initState();
    product = ModelProduct.getProductMD();
  }

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
                      FutureBuilder<ModelProduct>(
                          future: product,
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                print('Waiting...');
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

                                  return ListView.builder(
                                      itemCount: snapshot.data!.data!.length,
                                      shrinkWrap: true,
                                      itemBuilder: (ctx, index) {
                                        print(snapshot);
                                        return Container(
                                          margin: EdgeInsets.all(20),
                                          width: mediaQueryWidth * 8,
                                          height: bodyHeight * 0.2,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey.shade100
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
                                                  snapshot.data!.data![index]
                                                      .productName
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                subtitle: Text(
                                                  snapshot.data!.data![index]
                                                      .username
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                trailing: GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .push(
                                                              MaterialPageRoute(
                                                        builder: (context) {
                                                          return FullDetailProductAndroid(
                                                            title: snapshot
                                                                .data!
                                                                .data![index]
                                                                .productName
                                                                .toString(),
                                                            username: snapshot
                                                                .data!
                                                                .data![index]
                                                                .username
                                                                .toString(),
                                                            keterangan: snapshot
                                                                .data!
                                                                .data![index]
                                                                .keterangan
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
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "Price : ",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data!
                                                                .data![index]
                                                                .price
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 14,
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
                                        );
                                      });
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
      ),
    );
  }
}
