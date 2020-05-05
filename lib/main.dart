import 'package:flutter/material.dart';

import 'package:app_design/src/pages/basic_design.dart';
import 'package:app_design/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(),
      initialRoute: 'scroll',
      routes: {
        'basico': (BuildContext context) => BasicDesign(),
        'scroll': (BuildContext context) => ScrollPage(),
      },
    );
  }
}
