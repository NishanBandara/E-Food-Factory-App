import 'dart:developer';

import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Widgets/CustomPainter/BackgroundPainter.dart';

class LoginEmailWidget extends StatefulWidget {
  const LoginEmailWidget({Key? key}) : super(key: key);

  @override
  State<LoginEmailWidget> createState() => _LoginEmailWidgetState();
}

class _LoginEmailWidgetState extends State<LoginEmailWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Column(
            children: [
              Spacer(),
              Spacer(),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'E-Food Factory',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
                    child: InkWell(
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextField(
                            cursorColor: Colors.transparent,
                            controller: emailController,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                labelText: 'Email ',
                                fillColor: Colors.transparent),
                            obscureText: false,
                          ),
                        ),
                      ),
                      onTap: () async {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
                    child: InkWell(
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextField(
                            controller: passwordController,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(labelText: 'Password '),
                            obscureText: true,
                          ),
                        ),
                      ),
                      onTap: () async {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(85, 3, 85, 3),
                    child: InkWell(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      onTap: () async {
                        signIn();
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Center(
                child: CircularProgressIndicator(),
              ));
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
            child: Scaffold(
                body: Center(
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                      // height: 250,
                      // width: 300,
                      child: Icon(
                    Icons.error_outline_outlined,
                    color: Colors.black12,
                    size: 80,
                  )

                      //  Image.asset('images/CarLog_Logo.png'),
                      ),
                ),
                Text('Not Matching... Please try Again!',
                    style: TextStyle(color: Colors.black26, fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    color: primaryColor,
                    child: Text(
                      'Try Again',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
          ),
        ))),
      );
    }
  }
}
