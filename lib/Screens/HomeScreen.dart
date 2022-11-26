import 'dart:convert';
import 'dart:developer';

import 'package:efood_factory/Screens/E_Numbers/E_NumberScreen.dart';
import 'package:efood_factory/Screens/FoodProcess.dart';
import 'package:efood_factory/Screens/ProducsCatogaty.dart';
import 'package:efood_factory/Screens/QR_Reader.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// *********************** Fetching API  **************************************
  String? userName;
  bool _isListView = false;
  @override
  void initState() {
    // final user = FirebaseAuth.instance.currentUser!;

    // if (user.email.toString() == null) {
    //   userName = 'Nishan';
    // } else {
    //   userName = user.email;
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // String? user = FirebaseAuth.instance.currentUser.toString();
    // log(FirebaseAuth.instance.currentUser!.email!.toString());
    return Scaffold(
      backgroundColor: backgoundColor,
      appBar: AppBar(
        title: Text(
          "E-Food Factory",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/CarLog_Logo.png'),
              radius: 20,
              backgroundColor: Colors.transparent,
            ),
          )
        ],
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 7,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "welcome, " + "Hasith",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.view_list_rounded),
                        onPressed: () {
                          setState(() {
                            _isListView = true;
                          });
                        }),
                    IconButton(
                        icon: Icon(Icons.grid_view),
                        onPressed: () {
                          setState(() {
                            _isListView = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // !-------------

            _isListView == true
                ? Column(
                    children: [
                      // !------- E Number-----------
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return E_NumberScanner();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 3,
                                    color: secondaryColor,
                                  ),
                                  Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 2),
                                      child: Container(
                                        height: 50,
                                        child: Image.asset('images/file.png'),
                                      ),
                                    )
                                  ]),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 17, 111, 187),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        // color: Colors.green,
                                        width: 400,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Center(
                                            child: Text(
                                              "  E-Number Search",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),

                      // !------------- Production Detils -----------
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return QRViewExample();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 3,
                                    color: Colors.greenAccent,
                                  ),
                                  Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 5),
                                      child: Container(
                                        height: 50,
                                        child:
                                            Image.asset('images/barcode.png'),
                                      ),
                                    )
                                  ]),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        // color: Colors.green,
                                        width: 400,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Center(
                                            child: Text(
                                              "  Product Details",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),

                      //  !----Food Processing-----

                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return FoodProcess();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 3,
                                    color: Colors.teal,
                                  ),
                                  Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 5),
                                      child: Container(
                                        height: 50,
                                        child: Image.asset(
                                            'images/processed-food.png'),
                                      ),
                                    )
                                  ]),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.teal,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                          // color: Colors.green,
                                          width: 400,
                                          height: 60,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Center(
                                              child: Text(
                                                "  Food Processing ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      // !------------- Company Detils -----------
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return PopulationProductTypes();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 3,
                                    color: Colors.redAccent,
                                  ),
                                  Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 5),
                                      child: Container(
                                        height: 50,
                                        child: Image.asset('images/rating.png'),
                                      ),
                                    )
                                  ]),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        // color: Colors.green,
                                        width: 400,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Center(
                                            child: Text(
                                              "  Population",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: C,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return E_NumberScanner();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Container(
                                  width: 180,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                      elevation: 5,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 3,
                                            color: secondaryColor,
                                          ),
                                          Stack(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 5),
                                              child: Container(
                                                height: 50,
                                                child: Image.asset(
                                                    'images/file.png'),
                                              ),
                                            )
                                          ]),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 17, 111, 187),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                // color: Colors.green,
                                                width: 180,
                                                height: 60,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Center(
                                                    child: Text(
                                                      "  E-Number Search",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),

                            // !------- PRODUCTS-----------
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return QRViewExample();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Container(
                                  width: 180,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                      elevation: 5,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 3,
                                            color: Colors.greenAccent,
                                          ),
                                          Stack(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 5),
                                              child: Container(
                                                height: 50,
                                                child: Image.asset(
                                                    'images/barcode.png'),
                                              ),
                                            )
                                          ]),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                // color: Colors.green,
                                                width: 180,
                                                height: 60,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Center(
                                                    child: Text(
                                                      "  Product Details",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return FoodProcess();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Container(
                                  width: 180,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                      elevation: 5,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 3,
                                            color: Colors.teal,
                                          ),
                                          Stack(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 5),
                                              child: Container(
                                                height: 50,
                                                child: Image.asset(
                                                    'images/processed-food.png'),
                                              ),
                                            )
                                          ]),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.teal,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                // color: Colors.green,
                                                width: 180,
                                                height: 60,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Center(
                                                    child: Text(
                                                      " Food Processing ",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return PopulationProductTypes();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Container(
                                  width: 180,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                      elevation: 5,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 3,
                                            color: Colors.redAccent,
                                          ),
                                          Stack(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 5),
                                              child: Container(
                                                height: 50,
                                                child: Image.asset(
                                                    'images/rating.png'),
                                              ),
                                            )
                                          ]),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                // color: Colors.green,
                                                width: 180,
                                                height: 60,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Center(
                                                    child: Text(
                                                      "  Population",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        )
                        // !------------- Production Detils -----------
                      ],
                    ),
                  ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Powered by University of Vocational Technology',
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('images/Univotec.png'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
