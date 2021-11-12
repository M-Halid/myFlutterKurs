import 'package:flutter/material.dart';

import 'green_page.dart';
import 'main.dart';
import 'unKnownPage.dart';
import 'yellow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 routes: {
          "/GreenPage": (context) => GreenPage(),
          "/MainPage": (context) => MainPage(),
          "/YellowPage": (context) => YellowPage(),
        },    
        onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => UnKnown()),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}