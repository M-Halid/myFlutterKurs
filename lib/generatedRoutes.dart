// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutti_ui_2/buttons.dart';
import 'package:flutti_ui_2/people.dart';
import 'package:flutti_ui_2/unKnownPage.dart';
import 'package:flutti_ui_2/yellow_page.dart';

import 'detail_pieple.dart';
import 'green_page.dart';
import 'main.dart';
import 'red_page.dart';

class RouteGenerator {
  static Route<dynamic>? myRouteGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/YellowPage":
        return CupertinoPageRoute(builder: (context) => YellowPage());
      case "/MainPage":
        return CupertinoPageRoute(builder: (context) => MainPage());
      case "/GreenPage":
        return CupertinoPageRoute(builder: (context) => GreenPage());
      case "/Buttons":
        return MaterialPageRoute(builder: (context) => Buttons());
      case "/RedPage":
        return CupertinoPageRoute(builder: (context) => RedPage());
      case "/People":
        return MaterialPageRoute(
            builder: (context) => People(), settings: settings);
      case "/detailPieple":
        var choosed = settings.arguments as Pieple;
        return CupertinoPageRoute(
            builder: (context) => DetailPieple(choosen: choosed),
            settings: settings);

      default:
        return CupertinoPageRoute(builder: (context) => UnKnown());
    }
  }
}
