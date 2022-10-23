import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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
                  )

                  // Image(
                  //   image: AssetImage("images/CarLog_Logo.png"),
                  //   height: 200,
                  //   width: 300,
                  // ),
                  ),

              SizedBox(
                height: 10,
              ),

// ****************** google signIn Button *************************************
              Padding(
                padding: const EdgeInsets.fromLTRB(85, 3, 85, 3),
                child: InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage("images/Google.png")),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  onTap: () async {
                    await Fluttertoast.showToast(
                        msg: "Please wiat a moment ...",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 10.0);

                    // googleSignIn().whenComplete(
                    //   () {
                    //     if (name != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        Fluttertoast.showToast(
                            msg: "Login has been Successfully!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                            fontSize: 10.0);
                        return HomeScreen();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                "or ",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 10,
              ),

// ****************** google Facebook Button *************************************
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 3, 80, 3),
                child: InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage("images/facebook.png")),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign in with Facebook",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  onTap: () async {},
                ),
              ),

              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
