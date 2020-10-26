import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'dowload.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'faq.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<SecondScreen> {
  int selectedIndex = 0;
  final widgetOptions = [
    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF7632fd),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.drawPolygon,
                      color: Color(0xFF7632fd),
                      size: 40,
                    ),
                    title: const Text(
                      'Card title 1',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far '
                      'upon excluding.Greyhound divisively hello coldly wonderfully '
                      'marginally far upon excluding.Greyhound divisively hello '
                      'coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF7632fd),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text(
                          'Read More',
                          style: TextStyle(
                            fontFamily: 'Recursive',
                            fontSize: 15.0,
                            color: Color(0xFF7632fd),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF7632fd),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text(
                          'Code',
                          style: TextStyle(
                            fontFamily: 'Recursive',
                            fontSize: 15.0,
                            color: Color(0xFF7632fd),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.bookmark),
                        iconSize: 30,
                        color: Color(0xFF7632fd),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.shareAltSquare),
                        iconSize: 35,
                        color: Color(0xFF7632fd),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Image.asset('images/card1.png'),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF7632fd),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.drawPolygon,
                      color: Color(0xFF7632fd),
                      size: 40,
                    ),
                    title: const Text(
                      'Card title 2',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF7632fd),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text(
                          'Read More',
                          style: TextStyle(
                            fontFamily: 'Recursive',
                            fontSize: 15.0,
                            color: Color(0xFF7632fd),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF7632fd),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text(
                          'Code',
                          style: TextStyle(
                            fontFamily: 'Recursive',
                            fontSize: 15.0,
                            color: Color(0xFF7632fd),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.bookmark),
                        iconSize: 30,
                        color: Color(0xFF7632fd),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.shareAltSquare),
                        iconSize: 35,
                        color: Color(0xFF7632fd),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Image.asset('images/card1.png'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF7632fd),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(12,8,0,0),
                    child: Text(
                      'License',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.'
                          'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.'
                          'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF7632fd),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(12,8,0,0),
                    child: Text(
                      'Credit',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.'
                          'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.'
                          'Greyhound divisively hello coldly wonderfully marginally far '
                          'upon excluding.Greyhound divisively hello coldly wonderfully '
                          'marginally far upon excluding.Greyhound divisively hello '
                          'coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                        fontFamily: 'Recursive',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0,200,0,0),
      child: Text(
        'FAQs',
        style: TextStyle(
          fontFamily: 'Recursive',
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0,200,0,0),
      child: Text(
        'Know the Developer',
        style: TextStyle(
          fontFamily: 'Recursive',
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
//              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'eduAlgo',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 38.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Color(0xFF7632fd),
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Download',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/download');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Installation',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Algorithms',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Linked List',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFF7632fd),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Binary Tree',
                    style: TextStyle(
                      fontFamily: 'Recursive',
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "eduAlgo",
          style: TextStyle(
            fontFamily: 'Recursive',
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF7632fd),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF7632fd),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF7632fd),
            icon: FaIcon(
              FontAwesomeIcons.fileAlt,
              color: Colors.white,
            ),
            title: Text(
              'Docs',
              style: TextStyle(
                fontFamily: 'Recursive',
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF7632fd),
            icon: FaIcon(
              FontAwesomeIcons.gift,
              color: Colors.white,
            ),
            title: Text(
              'License',
              style: TextStyle(
                fontFamily: 'Recursive',
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF7632fd),
            icon: FaIcon(
              FontAwesomeIcons.questionCircle,
              color: Colors.white,
            ),
            title: Text(
              'FAQs',
              style: TextStyle(
                fontFamily: 'Recursive',
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF7632fd),
            icon: FaIcon(
              FontAwesomeIcons.addressCard,
              color: Colors.white,
            ),
            title: Text(
              'Dev',
              style: TextStyle(
                fontFamily: 'Recursive',
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.redAccent,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
