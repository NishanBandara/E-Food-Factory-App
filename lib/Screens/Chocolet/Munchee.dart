import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ChocoMuncheeDetails extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ChocoMuncheeDetails> {
  var percentage = 34;
  bool _isLike = false;
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
                                    "images/Munchee.png")),
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
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Munchee(Pvt)Ltd",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: primaryColor,
                                                    fontWeight: FontWeight.w500
                                                    // fontFamily: "Pacifico"
                                                    ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: !_isLike
                                                      ? InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              _isLike =
                                                                  !_isLike;
                                                              if (_isLike) {
                                                                percentage =
                                                                    percentage +
                                                                        1;
                                                              } else {
                                                                percentage =
                                                                    percentage -
                                                                        1;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color:
                                                                Colors.black26,
                                                            size: 30,
                                                          ),
                                                        )
                                                      : InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              _isLike =
                                                                  !_isLike;

                                                              if (_isLike) {
                                                                percentage =
                                                                    percentage +
                                                                        1;
                                                              } else {
                                                                percentage =
                                                                    percentage -
                                                                        1;
                                                              }
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 30,
                                                          ),
                                                        ))
                                            ],
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
                                              "Percentage of Favirote",
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
                                            child: Center(
                                              child: Container(
                                                width: 100,
                                                child: CircularPercentIndicator(
                                                  radius: 80.0,
                                                  lineWidth: 13.0,
                                                  animation: true,
                                                  percent: 0.7,
                                                  center: new Text(
                                                    '${percentage} %',
                                                    style: new TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20.0),
                                                  ),
                                                  circularStrokeCap:
                                                      CircularStrokeCap.round,
                                                  progressColor: Colors.purple,
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
                                          Center(
                                            child: Container(
                                              width: 200,
                                              height: 200,
                                              child: Image.asset(
                                                  'images/MuncheeChoco.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                35, 5, 3, 3),
                                            child: Text(
                                              "MUNCHEE CHOCOLATE CREAM",
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
                                                        "Made from a generations-old secret recipe, using the world’s finest cocoa beans that create the creamy delicious chocolate filling and give the biscuit a rich chocolate taste. Real Chocolate, Real Taste.",
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
