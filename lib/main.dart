import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'explore.dart';
import 'dowload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash2(),
        '/secondscreen': (context) => SecondScreen(),
        '/download': (context) => download(),
//        '/installation': (context) => installation(),
//        '/algorithms': (context) => algorithms(),
//        '/linkedlist': (context) => linkedlist(),
//        '/binarytree': (context) => binarytree(),
      },
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF7632fd),
      padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
      child: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: FirstScreen(),
//        onClick: (){
//          Navigator.pushNamed(context, '/secondscreen');
//        },
        backgroundColor: Color(0xFF7632fd),
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

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF7632fd),
        padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(10, 70, 0, 0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Image(
                  image: AssetImage('images/eduAlgopg.png'),
                  height: 300.0,
                ),
              ),
              SizedBox(
                height: 37.0,
              ),
//              SizedBox(
//                width: 280,
//                height: 20,
//                child: Divider(
//                  color: Colors.white,
//                ),
//              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(63, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlatButton(
//                      color: Colors.white,
                        child: const Text(
                          '     EXPLORE 📃    ',
                          style: TextStyle(
                            color: Color(0xFF7632fd),
                            fontSize: 20.0,
                            fontFamily: "Comfortaa",
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/secondscreen');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(63, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlatButton(
//                      color: Colors.white,
                        child: const Text(
                          '  CONTRIBUTE    ',
                          style: TextStyle(
                            color: Color(0xFF7632fd),
                            fontSize: 20.0,
                            fontFamily: "Comfortaa",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/secondscreen');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(63, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlatButton(
//                      color: Colors.white,
                        child: const Text(
                          '  FOLLOW US      ',
                          style: TextStyle(
                            color: Color(0xFF7632fd),
                            fontSize: 20.0,
                            fontFamily: "Comfortaa",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/secondscreen');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(63, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlatButton(
//                      color: Colors.white,
                        child: const Text(
                          ' CONTACT US     ',
                          style: TextStyle(
                            color: Color(0xFF7632fd),
                            fontSize: 20.0,
                            fontFamily: "Comfortaa",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/secondscreen');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(63, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlatButton(
//                      color: Colors.white,
                        child: const Text(
                          '  BUG BOUNTY    ',
                          style: TextStyle(
                            color: Color(0xFF7632fd),
                            fontSize: 20.0,
                            fontFamily: "Comfortaa",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/secondscreen');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
