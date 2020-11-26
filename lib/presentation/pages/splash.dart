
import 'package:edualgo_app_demo/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'first_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kThemeColor,
      padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
      child: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: FirstPage(),
//        onClick: (){
//          Navigator.pushNamed(context, '/secondscreen');
//        },
        backgroundColor: kThemeColor,
        image: new Image.asset(
          "images/eduAlgopg.png",
        ),
//        loadingText: Text("Click Here",
//          style: TextStyle(
//            fontFamily: 'Recursive',
//            fontSize: 20.0,
//            color: Colors.white,
//            fontWeight: FontWeight.w500,
//          ),
//        ),
        photoSize: 150.0,
        loaderColor: Colors.white,
//        gradientBackground: LinearGradient(
//            colors: [Color(0xFFc7adff), Color(0xFFdac7ff),Color(0xFFebe0ff)],
//            begin: Alignment.bottomCenter,
//            end: Alignment.topCenter,
//            stops: [0.2,0.6,1]
//        ),
      ),
    );
  }
}