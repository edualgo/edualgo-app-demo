import 'package:edualgo_app_demo/core/colors.dart';
import 'package:flutter/material.dart';

class MyLicensePage extends StatelessWidget {
  final ScrollController scrollController;

  const MyLicensePage({Key key, this.scrollController}) : super(key: key);

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
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
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
                    color: kThemeColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
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
    );
  }
}
