import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Green Page"),
            automaticallyImplyLeading: true,
            leading: null,
          ),
          body: Column(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/YellowPage');
                },
                child: Text("To Yellow Button"),
                style: ElevatedButton.styleFrom(primary: Colors.yellow[700]))
          ]),
        ));
  }
}
