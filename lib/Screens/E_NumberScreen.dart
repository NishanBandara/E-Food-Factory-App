import 'package:efood_factory/Screens/E_NumberDetails.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomeScreen.dart';

class E_NumberScanner extends StatefulWidget {
  @override
  _E_NumberScannerState createState() => _E_NumberScannerState();
}

class _E_NumberScannerState extends State<E_NumberScanner> {
  FocusNode? _focusNode;

  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "eNumber": "E100",
      "eName": 'Curcumin',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 2,
      "eNumber": "E101",
      "eName": 'Riboflavin or lactoflavin',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 3,
      "eNumber": "E102",
      "eName": 'Tartrazine',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 4,
      "eNumber": "E104",
      "eName": 'Quinoline Yellow',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 5,
      "eNumber": "E110",
      "eName": 'Sunset Yellow',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 6,
      "eNumber": "E120",
      "eName": 'Cochineal',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 7,
      "eNumber": "E110",
      "eName": 'Carmoisine',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 8,
      "eNumber": "E123",
      "eName": 'Amaranth',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 9,
      "eNumber": "E124",
      "eName": 'Ponceau 4R',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
    },
    {
      "id": 10,
      "eNumber": "E124",
      "eName": 'Erythrosine',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Used in pastries, confectionery, sauces and soups'
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
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["eNumber"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // foregroundColor: Colors.transparent,
        title: Text('E- Number Search'),
        actions: [Icon(Icons.qr_code)],
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Column(
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
                              height: 80,
                              child: Image.asset('images/fast-food.png')),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(13.0),
                                    bottomLeft: Radius.circular(13.0),
                                    topLeft: Radius.circular(13.0),
                                    topRight: Radius.circular(13.0),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 16, right: 16),
                                          child: TextField(
                                            focusNode: _focusNode,
                                            style: TextStyle(
                                                fontFamily: 'WorkSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: primaryColor),
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              labelText: 'Search E-Numbers',
                                              border: InputBorder.none,
                                              helperStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: secondaryColor),
                                              labelStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                letterSpacing: 0.2,
                                                color: Colors.black38,
                                              ),
                                            ),
                                            onChanged: (value) =>
                                                _runFilter(value),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: Icon(Icons.search,
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: _foundUsers.isNotEmpty
                                ? ListView.builder(
                                    itemCount: _foundUsers.length,
                                    itemBuilder: (context, index) => Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
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
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (_) {
                                                      return E_NumberDetails(
                                                        _foundUsers[index]
                                                                ["eNumber"]
                                                            .toString(),
                                                        _foundUsers[index]
                                                                ["eName"]
                                                            .toString(),
                                                        _foundUsers[index]
                                                                ["Description"]
                                                            .toString(),
                                                        _foundUsers[index]
                                                                ["Example"]
                                                            .toString(),
                                                      );
                                                    }));
                                                  },
                                                  child: ListTile(
                                                    leading: Text(
                                                      _foundUsers[index]["id"]
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 24),
                                                    ),
                                                    title: Text(
                                                        _foundUsers[index]
                                                            ['eNumber']),
                                                    // subtitle: Text(
                                                    //     '${_foundUsers[index]["Description"]}'),
                                                    subtitle: Text(
                                                        '${_foundUsers[index]["eName"]}'),

                                                    trailing: Icon(Icons
                                                        .arrow_forward_ios_rounded),
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
                                                          255, 17, 111, 187),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
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
                                        )))
                                : const Text(
                                    'No results found',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.black12),
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
          )
        ],
      ),
    );
  }

  // !SEARCH BAR

}
