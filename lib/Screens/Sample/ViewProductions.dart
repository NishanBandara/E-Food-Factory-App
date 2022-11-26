import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';
import 'package:efood_factory/Screens/Models/productsModel.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Models/eNumberModel.dart';

class ViewProductions extends StatefulWidget {
  @override
  _ViewProductionsState createState() => _ViewProductionsState();
}

class _ViewProductionsState extends State<ViewProductions> {
  FocusNode? _focusNode;

  var len;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // foregroundColor: Colors.transparent,
        title: Text('Production Search'),
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
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: 600,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: StreamBuilder<List<ProductModel>>(
                              stream: readProductions(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  log(FirebaseFirestore.instance.toString());
                                  len = FirebaseFirestore.instance.toString();

                                  final users = snapshot.data!;
                                  return ListView(
                                    children: users.map((buildUser)).toList(),
                                  );
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ),
                          Text(len.toString())
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

  Widget buildUser(ProductModel productModel) => Card(
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
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  //   return E_NumberDetails(
                  //     e_numberModel.eNumber.toString(),
                  //     e_numberModel.eName.toString(),
                  //     e_numberModel.description.toString(),
                  //     e_numberModel.example.toString(),
                  //   );
                  // }));
                },
                child: ListTile(
                  leading: Text(
                    productModel.Batch_no.toString(),
                    style: const TextStyle(fontSize: 24),
                  ),
                  title: Text(productModel.Product_name.toString()),
                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(productModel.Health_Benefit.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(productModel.Ingredient.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(productModel.AnalysisValues.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(productModel.EXP.toString() +
                            "| " +
                            productModel.MFD.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(productModel.toBeExpireDate.toString()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 111, 187),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  // color: Colors.green,
                  width: 400,
                  height: 5,
                  child: Container())
            ],
          ),
        ],
      ));

  Stream<List<ProductModel>> readProductions() => FirebaseFirestore.instance
      .collection('Products')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList());
}
