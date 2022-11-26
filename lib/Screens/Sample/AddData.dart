import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efood_factory/Screens/Sample/ViewData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddENumbers extends StatefulWidget {
  const AddENumbers({Key? key}) : super(key: key);

  @override
  State<AddENumbers> createState() => _AddENumbersState();
}

class _AddENumbersState extends State<AddENumbers> {
  final index_controller = TextEditingController();
  final Ename_controller = TextEditingController();
  final Enumber_controller = TextEditingController();
  final Example_controller = TextEditingController();
  final description_controller = TextEditingController();

  // final controller = TextEditingController();

  void clearText() {
    // index_controller.clear();

    Ename_controller.clear();
    Enumber_controller.clear();
    Example_controller.clear();
    description_controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Add E Numbers')),
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
                    child: Text('VIEW E NUMBERS'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewData();
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
                      labelText: 'enumber ', fillColor: Colors.transparent),
                  controller: Enumber_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'ename ', fillColor: Colors.transparent),
                  controller: Ename_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'example ', fillColor: Colors.transparent),
                  controller: Example_controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'description ', fillColor: Colors.transparent),
                  controller: description_controller,
                ),
                RaisedButton(
                    child: Text('SAVE'),
                    onPressed: () {
                      final index = index_controller.text;
                      final eNum = Enumber_controller.text;
                      final ename = Ename_controller.text;

                      final example = Example_controller.text;
                      final description = description_controller.text;
                      createUser(
                          eName: ename,
                          enumber: eNum,
                          example: example,
                          index: index,
                          description: description);

                      clearText();

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewData();
                      }));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future createUser(
      {required String index,
      required String enumber,
      required String eName,
      required String example,
      required String description}) async {
    final docUser =
        FirebaseFirestore.instance.collection('E_Numbers').doc(index);

    final json = {
      'eNumber': enumber,
      'eName': eName,
      'Example': example,
      'Description': description
    };
    await docUser.set(json);
  }
}
