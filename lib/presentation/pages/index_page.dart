import 'dart:async';

import 'package:edualgo_app_demo/core/colors.dart';
import 'package:edualgo_app_demo/presentation/pages/dev_page.dart';
import 'package:edualgo_app_demo/presentation/pages/docs_page.dart';
import 'package:edualgo_app_demo/presentation/pages/faq_page.dart';
import 'package:edualgo_app_demo/presentation/pages/license_page.dart';
import 'package:edualgo_app_demo/presentation/widgets/app_bar.dart';
import 'package:edualgo_app_demo/presentation/widgets/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IndexPage extends StatefulWidget {
  const IndexPage();
  @override
  IndexPageState createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  IndexPageState();
  Future<void> setPage(int page) async {
    pageNumberNotifier.value = page;
  }

  final ValueNotifier<int> pageNumberNotifier = ValueNotifier<int>(0);
  DateTime currentBackPressTime;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _widgets({ScrollController scrollController}) => <Widget>[
        DocsPage(
          scrollController: scrollController,
        ),
        MyLicensePage(
          scrollController: scrollController,
        ),
        FaqPage(),
        DevPage()
      ];

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
    pageNumberNotifier.dispose();
  }

  void _selectedTab(int index) {
    if (pageNumberNotifier.value == index) {
      scrollController.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    } else {
      pageNumberNotifier.value = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        key: UniqueKey(),
        valueListenable: pageNumberNotifier,
        builder: (BuildContext context, int value, Widget child) {
          return SafeArea(
            child: Scaffold(
              appBar: myAppbar,
              drawer: myDrawer,
              body: IndexedStack(
                index: pageNumberNotifier.value,
                children: _widgets(scrollController: scrollController),
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: kThemeColor,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    backgroundColor: kThemeColor,
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
                    backgroundColor: kThemeColor,
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
                    backgroundColor: kThemeColor,
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
                    backgroundColor: kThemeColor,
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
                currentIndex: value,
                fixedColor: Colors.redAccent,
                onTap: _selectedTab,
              ),
            ),
          );
        });
  }
}
