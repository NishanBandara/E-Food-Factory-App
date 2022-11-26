import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';
import 'package:efood_factory/Screens/Models/eNumberModel.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ReadSingle extends StatefulWidget {
  const ReadSingle({Key? key}) : super(key: key);

  @override
  State<ReadSingle> createState() => _ReadSingleState();
}

class _ReadSingleState extends State<ReadSingle> {
  final index_controller = TextEditingController();
  var index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'INDEX ', fillColor: Colors.transparent),
              style: TextStyle(),
              controller: index_controller,
              onChanged: (value) {
                log(value);
                setState(() {
                  index = value;
                });
              },
            ),
          ),
          RaisedButton(onPressed: () {}),

          StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('E_Numbers')
                  .snapshots(),
              builder: (context, snapshot) {
                return (snapshot.connectionState == ConnectionState.waiting)
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          var data = snapshot.data!.docs[index].data()
                              as Map<String, dynamic>;
                          log(data.toString());

                          if (data['eName']
                              .toString()
                              .toLowerCase()
                              .startsWith(name.toLowerCase())) {
                            return Text(data['eName'].toString());
                          }
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        });
              })

          // FutureBuilder<E_numberModel?>(
          //   future: readUser(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasError) {
          //       return Text('ERROR');
          //     } else if (snapshot.hasData) {
          //       final user = snapshot.data;
          //       return user == null
          //           ? Center(child: Text('No data'))
          //           : buildUser(user);
          //     } else {
          //       return CircularProgressIndicator();
          //     }
          //   },
          // ),
        ],
      ),
    );
  }

  Widget buildUser(E_numberModel e_numberModel) => Card(
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
                onTap: () {},
                child: ListTile(
                  leading: Text(
                    e_numberModel.eNumber.toString().toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  title: Text(e_numberModel.eName.toString()),
                  // subtitle: Text(
                  //     '${_foundUsers[index]["Description"]}'),
                  // subtitle: Text(e_numberModel.example.toString()),

                  trailing: Icon(Icons.arrow_forward_ios_rounded),
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

  Future<E_numberModel?> readUser() async {
    final docUert =
        FirebaseFirestore.instance.collection('E_Numbers').doc(index);

    final snapshot = await docUert.get();
    if (snapshot.exists) {
      return E_numberModel.fromJson(snapshot.data()!);
    }
  }
}
