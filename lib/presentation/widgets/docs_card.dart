import 'package:edualgo_app_demo/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class DocsCard extends StatefulWidget {

  @override
  _DocsCardState createState() => _DocsCardState();
}

class _DocsCardState extends State<DocsCard> {
  List<String> listString =List<String>();
  var bookmarkIcon = FontAwesomeIcons.bookmark;


  @override
  Widget build(BuildContext context) {


    return Padding(
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
                    icon: FaIcon(bookmarkIcon),
                    iconSize: 30,
                    color: kThemeColor,
                    onPressed: () {
                      setState(() {
                        bookmarkIcon == FontAwesomeIcons.bookmark ? bookmarkIcon= FontAwesomeIcons.solidBookmark : bookmarkIcon = FontAwesomeIcons.bookmark;
                      });

                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.shareAltSquare),
                    iconSize: 35,
                    color: kThemeColor,
                    onPressed: () async {

                      final RenderBox box = context.findRenderObject();
                      await Share.share('Card Title ',
                          subject: 'Code',
                          sharePositionOrigin: box.localToGlobal(Offset.zero)&box.size
                      );
//                      listString.add('images/card1.png');
//                      await Share.shareFiles(
//                          listString,
//                          text: 'Card',
//                          subject: 'Subject',
//                          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
//                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10.0,bottom: 10.0),
                child: Image.asset('images/card1.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}