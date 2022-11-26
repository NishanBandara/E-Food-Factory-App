import 'package:efood_factory/Screens/Chocolet/MalibanDetails.dart';
import 'package:efood_factory/Screens/Chocolet/Munchee.dart';
import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'BisicutList.dart';

class BiscuitVarients extends StatefulWidget {
  @override
  _BiscuitVarientsState createState() => _BiscuitVarientsState();
}

class _BiscuitVarientsState extends State<BiscuitVarients> {
  FocusNode? _focusNode;

  // This function is called whenever the text field changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biscuit Varients'),
        actions: [Icon(Icons.qr_code)],
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Container(
            height: 1000,
            child: Column(
              children: [
                Spacer(),
                SingleChildScrollView(
                  child: Container(
                    height: 500,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              child: Image.asset('images/cookies.png'),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  // !- 3 =====

                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      child: ExpansionTile(
                                        onExpansionChanged: (e) {
                                          if (e) {
                                            print(
                                                '=========== OPENED =============');
                                          } else {
                                            print('========= Closed==========');
                                          }
                                        },

                                        leading:
                                            Image.asset('images/chocolate.png'),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Cream Biscuit",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(".",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ))),
                                          ],
                                        ),

                                        //--------------- CONTENT VIEW ---------------------
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (_) {
                                                              return ChocoMalibanDetails();
                                                            }));
                                                          },
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Maliban"),
                                                            trailing: Image.asset(
                                                                'images/Maliban.png'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (_) {
                                                              return ChocoMuncheeDetails();
                                                            }));
                                                          },
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Munchee"),
                                                            trailing: Image.asset(
                                                                'images/Munchee.png'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Uswatta"),
                                                            trailing: Image.asset(
                                                                'images/Uswatta.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      child: ExpansionTile(
                                        onExpansionChanged: (e) {
                                          if (e) {
                                            print(
                                                '=========== OPENED =============');
                                          } else {
                                            print('========= Closed==========');
                                          }
                                        },

                                        leading:
                                            Image.asset('images/lemon.png'),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Puff Biscuits",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(".",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ))),
                                          ],
                                        ),

                                        //--------------- CONTENT VIEW ---------------------
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (_) {
                                                              return BiscuitVarients();
                                                            }));
                                                          },
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Maliban"),
                                                            trailing: Image.asset(
                                                                'images/Maliban.png'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Munchee"),
                                                            trailing: Image.asset(
                                                                'images/Munchee.png'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Uswatta"),
                                                            trailing: Image.asset(
                                                                'images/Uswatta.jpg'),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
// !--------------------

                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      child: ExpansionTile(
                                        onExpansionChanged: (e) {
                                          if (e) {
                                            print(
                                                '=========== OPENED =============');
                                          } else {
                                            print('========= Closed==========');
                                          }
                                        },

                                        leading: Image.asset(
                                            'images/cookies (1).png'),

                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Cookies biscuits",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(".",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ))),
                                          ],
                                        ),

                                        //--------------- CONTENT VIEW ---------------------
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // !----------------

                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      child: ExpansionTile(
                                        onExpansionChanged: (e) {
                                          if (e) {
                                            print(
                                                '=========== OPENED =============');
                                          } else {
                                            print('========= Closed==========');
                                          }
                                        },

                                        leading: Image.asset(
                                            'images/chili-pepper.png'),

                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Savory biscuits",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(".",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ))),
                                          ],
                                        ),

                                        //--------------- CONTENT VIEW ---------------------
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // !-----------

                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      child: ExpansionTile(
                                        onExpansionChanged: (e) {
                                          if (e) {
                                            print(
                                                '=========== OPENED =============');
                                          } else {
                                            print('========= Closed==========');
                                          }
                                        },

                                        leading: Image.asset(
                                            'images/cracker (1).png'),

                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Cracker Biscuits",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(".",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ))),
                                          ],
                                        ),

                                        //--------------- CONTENT VIEW ---------------------
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, bottom: 1),
                                            child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                                elevation: 5,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1,
                                                      color: secondaryColor,
                                                    ),
                                                    Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      17,
                                                                      111,
                                                                      187),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            // color: Colors.green,
                                                            width: 400,
                                                            height: 5,
                                                            child: Container())
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  // !SEARCH BAR

}








// import 'package:efood_factory/Screens/BiscuitDetails.dart';
// import 'package:efood_factory/Screens/E_NumberDetails.dart';
// import 'package:efood_factory/Widgets/Color/CustomColor.dart';
// import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'HomeScreen.dart';

// class BiscuitVarients extends StatefulWidget {
//   @override
//   _BiscuitVarientsState createState() => _BiscuitVarientsState();
// }

// class _BiscuitVarientsState extends State<BiscuitVarients> {
//   FocusNode? _focusNode;

//   // This list holds the data for the list view
//   List<Map<String, dynamic>> _foundUsers = [];
//   @override
//   initState() {
//     super.initState();
//   }

//   // This function is called whenever the text field changes

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Biscuit Varients'),
//         actions: [Icon(Icons.qr_code)],
//         elevation: 0,
//       ),
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           CustomPaint(painter: BackgroundPainter()),
//           Container(
//             height: 1000,
//             child: Column(
//               children: [
//                 Spacer(),
//                 SingleChildScrollView(
//                   child: Container(
//                     height: 500,
//                     child: Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Column(
//                           children: [
//                             Container(
//                                 height: 100,
//                                 width: 100,
//                                 child: Image.asset(
//                                   'images/cookies.png',
//                                 )),
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             Expanded(
//                               child: ListView(
//                                 children: [
//                                   // !- 3 =====

//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 1),
//                                     child: InkWell(
//                                       onTap: () {
//                                         Navigator.of(context).push(
//                                             MaterialPageRoute(builder: (_) {
//                                           return BiscuitDetails();
//                                         }));
//                                       },
//                                       child: Card(
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(30.0)),
//                                           elevation: 5,
//                                           child: Ink(
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(30.0),
//                                               border: Border.all(
//                                                   color: Colors.grey,
//                                                   width: 1.5),
//                                             ),
//                                             child: Column(
//                                               children: [
//                                                 Stack(children: [
//                                                   Padding(
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             8.0),
//                                                     child: InkWell(
//                                                       onTap: () {},
//                                                       child: ListTile(
//                                                         leading: Icon(
//                                                           Icons
//                                                               .arrow_forward_ios,
//                                                         ),
//                                                         title: Text(
//                                                           "Chocolet Cream Biscuit",
//                                                           style: TextStyle(
//                                                               color: Colors
//                                                                   .black54,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .w500),
//                                                         ),
//                                                         trailing: Image.asset(
//                                                           'images/chocolate.png',
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ]),
//                                                 Column(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     Container(
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           color: Color.fromARGB(
//                                                               255,
//                                                               17,
//                                                               111,
//                                                               187),
//                                                           borderRadius:
//                                                               BorderRadius.only(
//                                                             bottomLeft:
//                                                                 Radius.circular(
//                                                                     30.0),
//                                                             bottomRight:
//                                                                 Radius.circular(
//                                                                     30.0),
//                                                           ),
//                                                         ),
//                                                         // color: Colors.green,
//                                                         width: 343,
//                                                         height: 7,
//                                                         child: Container())
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           )),
//                                     ),
//                                   ),

//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 1),
//                                     child: Card(
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0)),
//                                         elevation: 5,
//                                         child: Ink(
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0),
//                                             border: Border.all(
//                                                 color: Colors.grey, width: 1.5),
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Stack(children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: InkWell(
//                                                     onTap: () {},
//                                                     child: ListTile(
//                                                       leading: Icon(
//                                                         Icons.arrow_forward_ios,
//                                                       ),
//                                                       title: Text(
//                                                         "Lemmon Puff",
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.black54,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w500),
//                                                       ),
//                                                       trailing: Image.asset(
//                                                           'images/lemon.png'),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ]),
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Color.fromARGB(
//                                                             255, 243, 98, 76),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           bottomLeft:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                         ),
//                                                       ),
//                                                       // color: Colors.green,
//                                                       width: 343,
//                                                       height: 7,
//                                                       child: Container())
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         )),
//                                   ),

//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 1),
//                                     child: Card(
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0)),
//                                         elevation: 5,
//                                         child: Ink(
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0),
//                                             border: Border.all(
//                                                 color: Colors.grey, width: 1.5),
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Stack(children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: InkWell(
//                                                     onTap: () {},
//                                                     child: ListTile(
//                                                       leading: Icon(
//                                                         Icons.arrow_forward_ios,
//                                                       ),
//                                                       title: Text(
//                                                         "Cream Cracker",
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.black54,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w500),
//                                                       ),
//                                                       trailing: Image.asset(
//                                                           'images/cracker (1).png'),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ]),
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Color.fromARGB(
//                                                             255, 153, 17, 187),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           bottomLeft:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                         ),
//                                                       ),
//                                                       // color: Colors.green,
//                                                       width: 343,
//                                                       height: 7,
//                                                       child: Container())
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         )),
//                                   ),

//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 10, right: 10, bottom: 1),
//                                     child: Card(
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0)),
//                                         elevation: 5,
//                                         child: Ink(
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(30.0),
//                                             border: Border.all(
//                                                 color: Colors.grey, width: 1.5),
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Stack(children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: InkWell(
//                                                     onTap: () {},
//                                                     child: ListTile(
//                                                       leading: Icon(
//                                                         Icons.arrow_forward_ios,
//                                                       ),
//                                                       title: Text(
//                                                         "Crisco",
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.black54,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w500),
//                                                       ),
//                                                       trailing: Image.asset(
//                                                           'images/cracker.png'),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ]),
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Color.fromARGB(
//                                                             255, 48, 187, 17),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           bottomLeft:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   30.0),
//                                                         ),
//                                                       ),
//                                                       // color: Colors.green,
//                                                       width: 343,
//                                                       height: 7,
//                                                       child: Container())
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         )),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   // !SEARCH BAR

// }
