import 'package:efood_factory/Screens/E_NumberDetails.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'BisicutList.dart';
import 'HomeScreen.dart';

class FoodProcess extends StatefulWidget {
  @override
  _FoodProcessState createState() => _FoodProcessState();
}

class _FoodProcessState extends State<FoodProcess> {
  FocusNode? _focusNode;

  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "eNumber": "Dairy Products",
    },
    {
      "id": 2,
      "eNumber": "confectionery and bakery products",
    },
    {
      "id": 3,
      "eNumber": "E102",
    },
    {
      "id": 4,
      "eNumber": "E104",
    },
    {
      "id": 5,
      "eNumber": "E110",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Process'),
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
                              child: Image.asset('images/processed-food.png'),
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

                                        leading: Image.asset(
                                            'images/dairy-products.png'),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Dairy Products",
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
                                                            title: Text(
                                                                "Fresh Milk"),
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
                                            Image.asset('images/bread.png'),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text(
                                              "confectionery and bakery products",
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
                                                              return BiscuitList();
                                                            }));
                                                          },
                                                          child: ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                            ),
                                                            title:
                                                                Text("Biscuit"),
                                                            trailing: Image.asset(
                                                                'images/cookies.png'),
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
                                                                Text("Cakes"),
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
                                                                Text("Breads"),
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

                                        leading:
                                            Image.asset('images/bread.png'),

                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Baverage Products",
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
                                          child: Text("Spicy Products",
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

                                        leading: Image.asset('images/meat.png'),

                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text("Fosh and Meal Products",
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
