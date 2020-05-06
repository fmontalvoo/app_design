import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_design/src/pages/basic_design.dart';
import 'package:app_design/src/pages/scroll_page.dart';
import 'package:app_design/src/menu_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicDesign(),
        'scroll': (BuildContext context) => ScrollPage(),
        'menu': (BuildContext context) => MenuPage(),
      },
    );
  }
}
