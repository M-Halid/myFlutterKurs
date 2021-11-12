// ignore_for_file: file_names

import 'package:flutter/material.dart';

class UnKnown extends StatelessWidget {
  const UnKnown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("404 Not Found")),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.wrong_location),
                    title: Text(
                      "404 Not Found",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", ModalRoute.withName("/MainPage"));
                  },
                  child: Text("To Main"))
            ],
          ),
        ),
      ),
    );
  }
}
