import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'red_page.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    int? _comingNumber = await Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context) => RedPage()));
                    print(_comingNumber);
                  },
                  child: Text("To Red Button"),
                  style: ElevatedButton.styleFrom(primary: Colors.red)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Lahmacun");
                  },
                  child: Text("To Yellow Button"),
                  style: ElevatedButton.styleFrom(primary: Colors.yellow)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/GreenPage');
                  },
                  child: Text("To Green Button"),
                  style: ElevatedButton.styleFrom(primary: Colors.green)),
              ElevatedButton(
                child: Text("TO PEOPLE"),
                onPressed: () {
                  int random = Random().nextInt(20) + 1;
                  Navigator.pushNamed(context, '/People', arguments: random);
                },
              )
            ],
          ),
        ));
  }
}
