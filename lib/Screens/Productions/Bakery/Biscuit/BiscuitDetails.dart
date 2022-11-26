import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BiscuitDetails extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<BiscuitDetails> {
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
              height: 480,
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
                                    "images/cracker.png")),
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
                                            "Cracker",
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 10, 3, 3),
                                            child: Text(
                                              "Incrediance",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500
                                                  // fontFamily: "Pacifico"
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 5, 3, 3),
                                            child: Card(
                                              child: Container(
                                                width: 400,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              3.0),
                                                      child: Text(
                                                        "Flour, S.M.S, Water, Corn flour, Lecithine, Sapp, Salt, Suger, Butter, Palm Oil",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          // fontFamily: "Pacifico"
                                                        ),
                                                      ),
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 5, 3, 3),
                                            child: Image.asset(
                                                'images/CrackerFlow.jpeg'),
                                          ),
                                        ],
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
