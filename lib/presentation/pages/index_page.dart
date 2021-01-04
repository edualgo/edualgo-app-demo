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
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


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
              bottomNavigationBar: ConvexAppBar(
                top: -16,
                backgroundColor: kThemeColor,
                style: TabStyle.reactCircle,
                height: 60,
                items: [
                  TabItem(
                    icon: Icons.description,
                    title: 'Home',
                  ),
                  TabItem(icon: Icons.card_membership, title: 'License'),
                  TabItem(icon: Icons.help, title: 'FAQs'),
                  TabItem(icon: Icons.supervisor_account, title: 'Profile'),
                ],
                initialActiveIndex: 1,
                onTap:  _selectedTab,
              ),
              
            ),
          );
        });
  }
}

