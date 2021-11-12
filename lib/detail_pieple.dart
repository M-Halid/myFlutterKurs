import 'package:flutter/material.dart';
import 'package:flutti_ui_2/buttons.dart';
import 'package:flutti_ui_2/people.dart';

class DetailPieple extends StatelessWidget {
  final Pieple choosen;
  const DetailPieple({required this.choosen, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [FlutterLogo()],
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: FlutterLogo(),
                ),
                title: Text(choosen.id.toString()),
              ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/Buttons",
                      ModalRoute.withName("/"),
                    ),
                child: Text("To The Buttons"))
          ],
        ),
      ),
    );
  }
}
