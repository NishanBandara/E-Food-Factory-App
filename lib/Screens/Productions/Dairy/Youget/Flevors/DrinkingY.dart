import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrinkingYDetails extends StatefulWidget {
  @override
  _DrinkingYDetailsState createState() => _DrinkingYDetailsState();
}

class _DrinkingYDetailsState extends State<DrinkingYDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ButtomAppBar(),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: [CustomPaint(painter: BackgroundPainter()), buildSignUp()],
      ),
    );
  }

  Widget buildSignUp() => SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: 450,
              // heightb
              //: 480,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Image(
                                height: 200, width: 200, image: AssetImage(
                                    // "images/Farm.png"
                                    "images/dairy-products.png")),
                          ),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  width: 400,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              35, 10, 3, 3),
                                          child: Text(
                                            "Drinking Yoghurt",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: primaryColor,
                                                fontWeight: FontWeight.w500
                                                // fontFamily: "Pacifico"
                                                ),
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          // Padding(
                                          //   padding: const EdgeInsets.fromLTRB(
                                          //       35, 10, 3, 3),
                                          //   child: Text(
                                          //     "Incrediance",
                                          //     style: TextStyle(
                                          //         fontSize: 20,
                                          //         color: Colors.black87,
                                          //         fontWeight: FontWeight.w500
                                          //         // fontFamily: "Pacifico"
                                          //         ),
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 5, 3, 3),
                                            child: Card(
                                              child: Container(
                                                width: 400,
                                                height: 200,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          35, 5, 3, 3),
                                                      child: Image.asset(
                                                          'images/Y_inc.PNG'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 10, 3, 3),
                                            child: Text(
                                              "Process Flow Chart",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500
                                                  // fontFamily: "Pacifico"
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            height: 600,
                                            width: 400,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 5, 3, 3),
                                              child: Image.asset(
                                                  'images/drikFlow.PNG'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 10, 3, 3),
                                        child: Text(
                                          "Machines",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500
                                              // fontFamily: "Pacifico"
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 10, 3, 3),
                                        child: Text(
                                          "•	Incubator \n•	Refrigerator",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500
                                              // fontFamily: "Pacifico"
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 10, 3, 3),
                                        child: Text(
                                          "Reference",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500
                                              // fontFamily: "Pacifico"
                                              ),
                                        ),
                                      ),
                                      // Center(
                                      //   child: new InkWell(
                                      //       child: new Text(
                                      //           'https://onlinelibrary.wiley.com/doi/pdf/10.1002/fsn3.1367'),
                                      //       onTap: () => launch(
                                      //           'https://onlinelibrary.wiley.com/doi/pdf/10.1002/fsn3.1367')),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 10, 3, 3),
                                        child: Text(
                                          "https://onlinelibrary.wiley.com/doi/pdf/10.1002/fsn3.1367",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500
                                              // fontFamily: "Pacifico"
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]));
}
