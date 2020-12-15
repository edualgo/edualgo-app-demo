import 'dart:async';
import 'package:edualgo_app_demo/core/colors.dart';
import 'package:edualgo_app_demo/presentation/pages/first_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FirstPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: Container(
        color: kThemeColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              // color: Colors.white,
              height: 150,
              width: 150,
              child: Image.asset('images/eduAlgopg.png'),
            ),
          ],
        ),
      ),
    );
  }
}
