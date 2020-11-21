import 'package:edualgo_app_demo/presentation/routes/route.gr.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.onGenerateRoute,
      initialRoute: Router.splashPage,
      navigatorKey: Router.navigator.key,
    );
  }
}
