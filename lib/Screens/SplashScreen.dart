import 'dart:async';

import 'package:efood_factory/Screens/HomeScreen.dart';
import 'package:efood_factory/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
                LoginScreen();
              }),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 250,
                width: 300,
                child: Image.asset('images/CarLog_Logo.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: 300,
            ),
            // Text('Powered by University of Vocational Tcxhnology')
          ],
        ),
      ),
    );
  }
}
