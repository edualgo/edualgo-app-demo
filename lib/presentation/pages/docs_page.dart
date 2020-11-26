import 'package:edualgo_app_demo/presentation/widgets/docs_card.dart';
import 'package:flutter/material.dart';

class DocsPage extends StatelessWidget {
  final ScrollController scrollController;

  const DocsPage({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: 10,
      itemBuilder: (context, index) {
        return DocsCard();
      },
    );
  }
}
