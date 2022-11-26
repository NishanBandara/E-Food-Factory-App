import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChocoMuncheeDetails extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ChocoMuncheeDetails> {
  final comment = TextEditingController();
  var Saftypercentage = 28;
  var nutrition = 19;
  var price = 25;
  bool _saftyisLike = false;
  bool _nutroyisLike = false;
  bool _priceLike = false;

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

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
              // height: 480,
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
                                              // Padding(
                                              //     padding:
                                              //         const EdgeInsets.all(8.0),
                                              //     child: !_isLike
                                              //         ? InkWell(
                                              //             onTap: () {
                                              //               setState(() {
                                              //                 _isLike =
                                              //                     !_isLike;
                                              //                 if (_isLike) {
                                              //                   Saftypercentage =
                                              //                       Saftypercentage +
                                              //                           1;
                                              //                 } else {
                                              //                   Saftypercentage =
                                              //                       Saftypercentage -
                                              //                           1;
                                              //                 }
                                              //               });
                                              //             },
                                              //             child: Icon(
                                              //               Icons
                                              //                   .favorite_border,
                                              //               color:
                                              //                   Colors.black26,
                                              //               size: 30,
                                              //             ),
                                              //           )
                                              //         : InkWell(
                                              //             onTap: () {
                                              //               setState(() {
                                              //                 _isLike =
                                              //                     !_isLike;

                                              //                 if (_isLike) {
                                              //                   Saftypercentage =
                                              //                       Saftypercentage +
                                              //                           1;
                                              //                 } else {
                                              //                   Saftypercentage =
                                              //                       Saftypercentage -
                                              //                           1;
                                              //                 }
                                              //               });
                                              //             },
                                              //             child: Icon(
                                              //               Icons.favorite,
                                              //               color: Colors.red,
                                              //               size: 30,
                                              //             ),
                                              //           ))
                                            ],
                                          )),
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

                                      // !!!!!!!!!!!!!!!!!!!!
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Card(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 5, 3, 3),
                                              child: Text(
                                                "Your Satisfcation about Product Taste ",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500,
                                                  // fontFamily: "Pacifico"
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          35, 5, 3, 3),
                                                  child: Text(
                                                    " Add Your rate here ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black38,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      // fontFamily: "Pacifico"
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: !_saftyisLike
                                                        ? InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _saftyisLike =
                                                                    !_saftyisLike;
                                                                if (_saftyisLike) {
                                                                  Saftypercentage =
                                                                      Saftypercentage +
                                                                          1;
                                                                } else {
                                                                  Saftypercentage =
                                                                      Saftypercentage -
                                                                          1;
                                                                }
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color: Colors
                                                                  .black26,
                                                              size: 30,
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _saftyisLike =
                                                                    !_saftyisLike;

                                                                if (_saftyisLike) {
                                                                  Saftypercentage =
                                                                      Saftypercentage +
                                                                          1;
                                                                  Fluttertoast.showToast(
                                                                      msg:
                                                                          "I'm  satified!",
                                                                      toastLength:
                                                                          Toast
                                                                              .LENGTH_SHORT,
                                                                      gravity: ToastGravity
                                                                          .BOTTOM,
                                                                      timeInSecForIosWeb:
                                                                          5,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      textColor:
                                                                          Colors
                                                                              .black,
                                                                      fontSize:
                                                                          10.0);
                                                                } else {
                                                                  Saftypercentage =
                                                                      Saftypercentage -
                                                                          1;
                                                                  // log("1111111");
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
                                            ),
                                            Card(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  // Padding(
                                                  //   padding:
                                                  //       const EdgeInsets.fromLTRB(
                                                  //           35, 10, 3, 3),
                                                  //   child: Text(
                                                  //     "CustomerS Satisfaction for November",
                                                  //     style: TextStyle(
                                                  //         fontSize: 18,
                                                  //         color: Colors.black87,
                                                  //         fontWeight: FontWeight.w500
                                                  //         // fontFamily: "Pacifico"
                                                  //         ),
                                                  //   ),
                                                  // ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(35, 5, 3, 3),
                                                    child: Center(
                                                      child: Container(
                                                        width: 100,
                                                        child:
                                                            CircularPercentIndicator(
                                                          radius: 80.0,
                                                          lineWidth: 13.0,
                                                          animation: true,
                                                          percent:
                                                              Saftypercentage /
                                                                  100,
                                                          center: new Text(
                                                            '${Saftypercentage} ',
                                                            style: new TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20.0),
                                                          ),
                                                          circularStrokeCap:
                                                              CircularStrokeCap
                                                                  .round,
                                                          progressColor:
                                                              Colors.purple,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

// !11111111111

                                      Card(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 5, 3, 3),
                                              child: Text(
                                                "Your Satisfcation about Product Quality ",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500,
                                                  // fontFamily: "Pacifico"
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          35, 5, 3, 3),
                                                  child: Text(
                                                    " Add Your rate here ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black38,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      // fontFamily: "Pacifico"
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: !_nutroyisLike
                                                        ? InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _nutroyisLike =
                                                                    !_nutroyisLike;
                                                                if (_nutroyisLike) {
                                                                  nutrition =
                                                                      nutrition +
                                                                          1;
                                                                } else {
                                                                  nutrition =
                                                                      nutrition -
                                                                          1;
                                                                }
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color: Colors
                                                                  .black26,
                                                              size: 30,
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _nutroyisLike =
                                                                    !_nutroyisLike;

                                                                if (_nutroyisLike) {
                                                                  nutrition =
                                                                      nutrition +
                                                                          1;
                                                                  Fluttertoast.showToast(
                                                                      msg:
                                                                          "I'm  satified!",
                                                                      toastLength:
                                                                          Toast
                                                                              .LENGTH_SHORT,
                                                                      gravity: ToastGravity
                                                                          .BOTTOM,
                                                                      timeInSecForIosWeb:
                                                                          5,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      textColor:
                                                                          Colors
                                                                              .black,
                                                                      fontSize:
                                                                          10.0);
                                                                } else {
                                                                  nutrition =
                                                                      nutrition -
                                                                          1;
                                                                  // log("1111111");
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
                                            ),
                                            Card(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  // Padding(
                                                  //   padding:
                                                  //       const EdgeInsets.fromLTRB(
                                                  //           35, 10, 3, 3),
                                                  //   child: Text(
                                                  //     "CustomerS Satisfaction for November",
                                                  //     style: TextStyle(
                                                  //         fontSize: 18,
                                                  //         color: Colors.black87,
                                                  //         fontWeight: FontWeight.w500
                                                  //         // fontFamily: "Pacifico"
                                                  //         ),
                                                  //   ),
                                                  // ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(35, 5, 3, 3),
                                                    child: Center(
                                                      child: Container(
                                                        width: 100,
                                                        child:
                                                            CircularPercentIndicator(
                                                          radius: 80.0,
                                                          lineWidth: 13.0,
                                                          animation: true,
                                                          percent:
                                                              nutrition / 100,
                                                          center: new Text(
                                                            '${nutrition} ',
                                                            style: new TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20.0),
                                                          ),
                                                          circularStrokeCap:
                                                              CircularStrokeCap
                                                                  .round,
                                                          progressColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  64,
                                                                  176,
                                                                  39),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Card(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 5, 3, 3),
                                              child: Text(
                                                "Your Satisfcation about Product Price ",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500,
                                                  // fontFamily: "Pacifico"
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          35, 5, 3, 3),
                                                  child: Text(
                                                    " Add Your rate here ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black38,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      // fontFamily: "Pacifico"
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: !_priceLike
                                                        ? InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _priceLike =
                                                                    !_priceLike;
                                                                if (_priceLike) {
                                                                  price =
                                                                      price + 1;
                                                                } else {
                                                                  price =
                                                                      price - 1;
                                                                }
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color: Colors
                                                                  .black26,
                                                              size: 30,
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                _priceLike =
                                                                    !_priceLike;

                                                                if (_priceLike) {
                                                                  price =
                                                                      price + 1;
                                                                  Fluttertoast.showToast(
                                                                      msg:
                                                                          "I'm  satified!",
                                                                      toastLength:
                                                                          Toast
                                                                              .LENGTH_SHORT,
                                                                      gravity: ToastGravity
                                                                          .BOTTOM,
                                                                      timeInSecForIosWeb:
                                                                          5,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      textColor:
                                                                          Colors
                                                                              .black,
                                                                      fontSize:
                                                                          10.0);
                                                                } else {
                                                                  price =
                                                                      price - 1;
                                                                  // log("1111111");
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
                                            ),
                                            Card(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  // Padding(
                                                  //   padding:
                                                  //       const EdgeInsets.fromLTRB(
                                                  //           35, 10, 3, 3),
                                                  //   child: Text(
                                                  //     "CustomerS Satisfaction for November",
                                                  //     style: TextStyle(
                                                  //         fontSize: 18,
                                                  //         color: Colors.black87,
                                                  //         fontWeight: FontWeight.w500
                                                  //         // fontFamily: "Pacifico"
                                                  //         ),
                                                  //   ),
                                                  // ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(35, 5, 3, 3),
                                                    child: Center(
                                                      child: Container(
                                                        width: 100,
                                                        child:
                                                            CircularPercentIndicator(
                                                          radius: 80.0,
                                                          lineWidth: 13.0,
                                                          animation: true,
                                                          percent: price / 100,
                                                          center: new Text(
                                                            '${price} ',
                                                            style: new TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20.0),
                                                          ),
                                                          circularStrokeCap:
                                                              CircularStrokeCap
                                                                  .round,
                                                          progressColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  39,
                                                                  46,
                                                                  176),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 10, 3, 3),
                                        child: Text(
                                          " Customer Satisfaction per Year",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500
                                              // fontFamily: "Pacifico"
                                              ),
                                        ),
                                      ),
                                      Card(
                                          child: Container(
                                              height: 200,
                                              child: SfCartesianChart(

                                                  // Enables the legend
                                                  legend: Legend(
                                                    isVisible: true,
                                                    position:
                                                        LegendPosition.bottom,
                                                  ),
                                                  // Initialize category axis
                                                  trackballBehavior:
                                                      TrackballBehavior(
                                                          enable: true,
                                                          tooltipAlignment:
                                                              ChartAlignment
                                                                  .near,
                                                          tooltipSettings:
                                                              InteractiveTooltip(
                                                                  enable: true,
                                                                  color: Colors
                                                                      .red)),
                                                  enableAxisAnimation: true,
                                                  tooltipBehavior:
                                                      TooltipBehavior(
                                                          enable: true),
                                                  primaryYAxis: NumericAxis(
                                                      anchorRangeToVisiblePoints:
                                                          true),
                                                  primaryXAxis: CategoryAxis(
                                                    labelRotation: 10,
                                                    majorGridLines:
                                                        MajorGridLines(
                                                      width: 1,
                                                      color: Colors.grey,
                                                      dashArray: <double>[
                                                        10,
                                                        10
                                                      ],
                                                    ),
                                                  ),
                                                  series: <ChartSeries>[
                                                    // Initialize line series
                                                    LineSeries<ChartData,
                                                        String>(
                                                      dataSource: [
                                                        // Bind data source
                                                        ChartData('Jan', 15),
                                                        ChartData('Feb', 12),
                                                        ChartData('Mar', 24),
                                                        ChartData('Apr', 30),
                                                        ChartData('May', 36),
                                                        ChartData('June', 34),
                                                        ChartData('July', 32),
                                                        ChartData('Aug', 28),
                                                        ChartData('Sep', 24),
                                                        ChartData('Oct', 30),
                                                        ChartData('Nov', 32),
                                                      ],
                                                      xValueMapper:
                                                          (ChartData data, _) =>
                                                              data.x,
                                                      yValueMapper:
                                                          (ChartData data, _) =>
                                                              data.y,
                                                    )
                                                  ]))),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 15, 3, 3),
                                        child: Card(
                                          child: Column(
                                            children: [
                                              Text('Add Your Comments ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    // fontFamily: "Pacifico"
                                                  )),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 3, 30, 3),
                                                child: InkWell(
                                                  child: Container(
                                                    height: 100,
                                                    padding: EdgeInsets.all(1),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1,
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: TextField(
                                                        cursorColor:
                                                            Colors.transparent,
                                                        controller: comment,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        decoration: InputDecoration(
                                                            icon: Icon(
                                                                Icons.comment),
                                                            labelText:
                                                                'Add here ',
                                                            fillColor: Colors
                                                                .transparent),
                                                        obscureText: false,
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () async {},
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        50, 3, 50, 3),
                                                child: InkWell(
                                                  child: Container(
                                                    height: 50,
                                                    padding: EdgeInsets.all(1),
                                                    decoration: BoxDecoration(
                                                        color: Colors.blueGrey,
                                                        border: Border.all(
                                                            width: 1,
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  1.0),
                                                          child: Icon(
                                                            Icons.send,
                                                            size: 40,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                        Text(
                                                          "Send",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontFamily:
                                                                  'Poppins'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () async {
                                                    comment.clear();
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "Your Comment has been sent to the Company!",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        timeInSecForIosWeb: 5,
                                                        backgroundColor:
                                                            Colors.white,
                                                        textColor: Colors.black,
                                                        fontSize: 10.0);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
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

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
