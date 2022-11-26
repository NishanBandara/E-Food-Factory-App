import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efood_factory/Screens/Sample/ViewData.dart';
import 'package:efood_factory/Screens/Sample/ViewProductions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProductions extends StatefulWidget {
  const AddProductions({Key? key}) : super(key: key);

  @override
  State<AddProductions> createState() => _AddProductionsState();
}

class _AddProductionsState extends State<AddProductions> {
  final index_controller = TextEditingController();
  final batchNumbers_controller = TextEditingController();
  final exp_controller = TextEditingController();
  final mdf_controller = TextEditingController();
  final healthBeni_controller = TextEditingController();
  final ingredience_controller = TextEditingController();
  final productname_controller = TextEditingController();
  final AnslysisValus_controller = TextEditingController();

  // final controller = TextEditingController();

  void clearText() {
    // index_controller.clear();

    batchNumbers_controller.clear();
    exp_controller.clear();
    healthBeni_controller.clear();
    ingredience_controller.clear();
    productname_controller.clear();
    AnslysisValus_controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Add Productions')),
      body: Container(
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                RaisedButton(
                    color: Colors.green,
                    child: Text('VIEW Products'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewProductions();
                      }));
                    }),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'INDEX ', fillColor: Colors.transparent),
                  style: TextStyle(),
                  controller: index_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'name ', fillColor: Colors.transparent),
                  controller: productname_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Batch no ', fillColor: Colors.transparent),
                  controller: batchNumbers_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'MDF ', fillColor: Colors.transparent),
                  controller: mdf_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Exp ', fillColor: Colors.transparent),
                  controller: exp_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'health beni ', fillColor: Colors.transparent),
                  controller: healthBeni_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'incred ', fillColor: Colors.transparent),
                  controller: ingredience_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Analysis Values ',
                      fillColor: Colors.transparent),
                  controller: AnslysisValus_controller,
                ),
                RaisedButton(
                    child: Text('SAVE'),
                    onPressed: () {
                      final index = index_controller.text;
                      final batchNum = batchNumbers_controller.text;
                      final pName = productname_controller.text;
                      final EXP = exp_controller.text;
                      final MDF = mdf_controller.text;
                      final ingrediance = ingredience_controller.text;
                      final healthofBeni = healthBeni_controller.text;
                      final analysisValue = AnslysisValus_controller.text;
                      createProduction(
                          batchNO: batchNum,
                          exp: EXP,
                          hobeni: healthofBeni,
                          index: index,
                          ingredience: ingrediance,
                          mdf: MDF,
                          proName: pName,
                          analysisValue: analysisValue);

                      clearText();

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewProductions();
                      }));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future createProduction(
      {required String index,
      required String batchNO,
      required String proName,
      required String exp,
      required String mdf,
      required String ingredience,
      required String hobeni,
      required String analysisValue}) async {
    final docUser =
        FirebaseFirestore.instance.collection('Products').doc(index);

    final json = {
      'Product Name': proName,
      'Batch no': batchNO,
      'EXP': exp,
      'Health Benefit': hobeni,
      'Ingredient': ingredience,
      'MFD': mdf,
      'Analysis Value': analysisValue
    };
    await docUser.set(json);
  }
}
