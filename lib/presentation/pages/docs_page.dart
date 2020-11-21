import 'package:edualgo_app_demo/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DocsPage extends StatelessWidget {
  final ScrollController scrollController;

  const DocsPage({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
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
                    color: kThemeColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.drawPolygon,
                        color: kThemeColor,
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
                          textColor: kThemeColor,
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text(
                            'Read More',
                            style: TextStyle(
                              fontFamily: 'Recursive',
                              fontSize: 15.0,
                              color: kThemeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        FlatButton(
                          textColor: kThemeColor,
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text(
                            'Code',
                            style: TextStyle(
                              fontFamily: 'Recursive',
                              fontSize: 15.0,
                              color: kThemeColor,
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
                          color: kThemeColor,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.shareAltSquare),
                          iconSize: 35,
                          color: kThemeColor,
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
                    color: kThemeColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.drawPolygon,
                        color: kThemeColor,
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
                          textColor: kThemeColor,
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text(
                            'Read More',
                            style: TextStyle(
                              fontFamily: 'Recursive',
                              fontSize: 15.0,
                              color: kThemeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        FlatButton(
                          textColor: kThemeColor,
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text(
                            'Code',
                            style: TextStyle(
                              fontFamily: 'Recursive',
                              fontSize: 15.0,
                              color: kThemeColor,
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
                          color: kThemeColor,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.shareAltSquare),
                          iconSize: 35,
                          color: kThemeColor,
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
    );
  }
}
