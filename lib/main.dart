// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutti_ui_2/generatedRoutes.dart';
import 'package:flutti_ui_2/red_page.dart';
import 'package:flutti_ui_2/unKnownPage.dart';

import 'buttons.dart';
import 'green_page.dart';
import 'yellow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      title: 'Material App',
      home: MainPage(),
      onGenerateRoute: RouteGenerator.myRouteGenerator,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(
            leading: FlutterLogo(),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView(
                children: [
                  SizedBox(height: 10),
                  InputForm(),
                  SizedBox(height: 90),
                  phoneInput(),
                  buttonsButton(context),
                ],
              ),
            ),
          ),
        ));
  }

  Padding phoneInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: TextField(
        keyboardType: TextInputType.phone,
        maxLength: 11,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
            hintText: "0 155 555 55 55",
            labelText: "Phone Number",
            prefixIcon: Icon(Icons.phone_outlined),
            contentPadding: EdgeInsets.all(14),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)))),
      ),
    );
  }

  Widget buttonsButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/Buttons");
        },
        child: Text("To The Buttons"));
  }
}

class InputForm extends StatefulWidget {
  const InputForm({
    Key? key,
  }) : super(key: key);
  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  late TextEditingController inputContrlr;

  @override
  void initState() {
    super.initState();

    void dispose() {
      inputContrlr.dispose();
      super.dispose();
    }

    inputContrlr = TextEditingController(text: "Hi Welcome!");
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // autofocus: true,
          controller: inputContrlr,
          onChanged: (String asd) {
            print(asd);
          },
          decoration: InputDecoration(labelText: '${inputContrlr.text}'),
        ),
      ],
    );
  }
}
