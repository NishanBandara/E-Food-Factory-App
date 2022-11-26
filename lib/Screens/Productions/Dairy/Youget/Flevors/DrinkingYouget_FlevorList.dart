import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';
import 'package:efood_factory/Screens/Productions/Dairy/Youget/Flevors/DrinkingY.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrinkingYougetFlrvorList extends StatefulWidget {
  @override
  _DrinkingYougetFlrvorListState createState() =>
      _DrinkingYougetFlrvorListState();
}

class _DrinkingYougetFlrvorListState extends State<DrinkingYougetFlrvorList> {
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
        title: Text('Drinking Yoghurt flavores'),
        actions: [Icon(Icons.qr_code)],
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Container(
            height: 10000,
            child: Column(
              children: [
                Spacer(),
                SingleChildScrollView(
                  child: Container(
                    height: 800,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  'images/dairy-products.png',
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 10, 3, 3),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500
                                    // fontFamily: "Pacifico"
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 5, 3, 3),
                              child: Card(
                                child: Container(
                                  width: 400,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Drinking yogurt (Doogh) is a fermented beverage which is prepared by mixing yogurt with water and some salt and in some regions with herbal flavorings. Iran is one of the largest producers and consumers of Doogh in the world, with an annual production of 120.000 tons of Doogh produced from yogurt',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            // fontFamily: "Pacifico"
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 3, 50, 3),
                                        child: InkWell(
                                          child: Container(
                                            height: 50,
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                                // color: Colors.blueGrey,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // Padding(
                                                //   padding:
                                                //       EdgeInsets.all(1.0),
                                                //   child: Icon(
                                                //     Icons.info_rounded,
                                                //     size: 40,
                                                //     color: Colors.black45,
                                                //   ),
                                                // ),
                                                // SizedBox(
                                                //   width: 15,
                                                // ),
                                                Text(
                                                  "View more",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black38,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () async {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (_) {
                                              return DrinkingYDetails();
                                            }));
                                          },
                                        ),
                                      ),
                                      // Text('Vew Flwo Chart'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      // Container(
                                      //     height: 200,
                                      //     width: 200,
                                      //     child: Image.asset(
                                      //       'images/Y_inc.PNG',
                                      //     )),
                                      // Container(
                                      //     height: 200,
                                      //     width: 200,
                                      //     child: Image.asset(
                                      //       'images/flowYou.PNG',
                                      //     )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                                        //   return BiscuitDetails();
                                                        // }));
                                                      },
                                                      child: ListTile(
                                                        leading: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                        ),
                                                        title: Text(
                                                          "Strawberry flavored ",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
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
