import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';

import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MeetList extends StatefulWidget {
  @override
  _MeetListState createState() => _MeetListState();
}

class _MeetListState extends State<MeetList> {
  FocusNode? _focusNode;

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    super.initState();
  }

  // This function is called whenever the text field changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet Products'),
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
                                width: 100,
                                child: Image.asset(
                                  'images/meat.png',
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  // !- 3 =====

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 1),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(builder: (_) {
                                        //   return BiscuitDetails();
                                        // }));
                                      },
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          elevation: 5,
                                          child: Ink(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1.5),
                                            ),
                                            child: Column(
                                              children: [
                                                Stack(children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: InkWell(
                                                      onTap: () {
                                                        // Navigator.of(context)
                                                        //     .push(
                                                        //         MaterialPageRoute(
                                                        //             builder:
                                                        //                 (_) {
                                                        //   return SetYougetFlrvorList();
                                                        // }));
                                                      },
                                                      child: ListTile(
                                                        leading: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                        ),
                                                        title: Text(
                                                          "Sausages",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        // trailing: Image.asset(
                                                        //   'images/cracker.png',
                                                        // ),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Color.fromARGB(
                                                              255,
                                                              17,
                                                              111,
                                                              187),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30.0),
                                                          ),
                                                        ),
                                                        // color: Colors.green,
                                                        width: 343,
                                                        height: 7,
                                                        child: Container())
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 1),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        elevation: 5,
                                        child: Ink(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 1.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Stack(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      // Navigator.of(context)
                                                      //     .push(
                                                      //         MaterialPageRoute(
                                                      //             builder: (_) {
                                                      //   return DrinkingYougetFlrvorList();
                                                      // }));
                                                    },
                                                    child: ListTile(
                                                      leading: Icon(
                                                        Icons.arrow_forward_ios,
                                                      ),
                                                      title: Text(
                                                        "Hams ( cured, Iberian)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      // trailing: Image.asset(
                                                      //     'images/cookies (1).png'),
                                                    ),
                                                  ),
                                                ),
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
                                                            255, 243, 98, 76),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  30.0),
                                                        ),
                                                      ),
                                                      // color: Colors.green,
                                                      width: 343,
                                                      height: 7,
                                                      child: Container())
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 1),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        elevation: 5,
                                        child: Ink(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 1.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Stack(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      // Navigator.of(context)
                                                      //     .push(
                                                      //         MaterialPageRoute(
                                                      //             builder: (_) {
                                                      //   return DrinkingYougetFlrvorList();
                                                      // }));
                                                    },
                                                    child: ListTile(
                                                      leading: Icon(
                                                        Icons.arrow_forward_ios,
                                                      ),
                                                      title: Text(
                                                        "Fresh & Cooked meat ",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      // trailing: Image.asset(
                                                      //     'images/cookies (1).png'),
                                                    ),
                                                  ),
                                                ),
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
                                                            255, 201, 76, 243),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  30.0),
                                                        ),
                                                      ),
                                                      // color: Colors.green,
                                                      width: 343,
                                                      height: 7,
                                                      child: Container())
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 1),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        elevation: 5,
                                        child: Ink(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 1.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Stack(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      // Navigator.of(context)
                                                      //     .push(
                                                      //         MaterialPageRoute(
                                                      //             builder: (_) {
                                                      //   return DrinkingYougetFlrvorList();
                                                      // }));
                                                    },
                                                    child: ListTile(
                                                      leading: Icon(
                                                        Icons.arrow_forward_ios,
                                                      ),
                                                      title: Text(
                                                        "Dried salt meat ",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      // trailing: Image.asset(
                                                      //     'images/cookies (1).png'),
                                                    ),
                                                  ),
                                                ),
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
                                                            255, 79, 243, 76),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  30.0),
                                                        ),
                                                      ),
                                                      // color: Colors.green,
                                                      width: 343,
                                                      height: 7,
                                                      child: Container())
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
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
