import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomeScreen.dart';

class E_NumberDetails extends StatefulWidget {
  final String? eNumber;
  final String? eName;
  final String? details;
  final String? example;

  E_NumberDetails(this.eNumber, this.eName, this.details, this.example);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<E_NumberDetails> {
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
                                    "images/fast-food.png")),
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
                                            widget.eNumber.toString(),
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
                                              "Name of the E-NUmber",
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
                                            child: Text(
                                              widget.eName.toString(),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: secondaryColor,
                                                fontWeight: FontWeight.w500,
                                                // fontFamily: "Pacifico"
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
                                              "Description of the E-NUmber",
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
                                            child: Text(
                                              widget.details.toString(),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: secondaryColor,
                                                fontWeight: FontWeight.w500,
                                                // fontFamily: "Pacifico"
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
                                              "Example of the E-NUmber",
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
                                            child: Text(
                                              widget.example.toString(),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: secondaryColor,
                                                fontWeight: FontWeight.w500,
                                                // fontFamily: "Pacifico"
                                              ),
                                            ),
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
