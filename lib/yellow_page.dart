import 'package:flutter/material.dart';
import 'package:flutti_ui_2/main.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Yellow Page"),
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", ModalRoute.withName("/MainPage"));
                  },
                  child: Text("To Main"))
            ],
          ),
        ));
  }
}
