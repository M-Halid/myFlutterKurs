import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Red Page"),
            automaticallyImplyLeading: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Go Back UP!',
                  style: TextStyle(fontSize: 32),
                ),
                ElevatedButton(
                    onPressed: () {
                      _randomNumber = Random().nextInt(100);
                      Navigator.of(context).pop(_randomNumber);
                    },
                    child: Icon(Icons.arrow_back_ios))
              ],
            ),
          ),
        ));
  }
}
