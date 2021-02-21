import 'package:flutter/material.dart';
import 'package:okello_website/tablet/about.dart';
import 'package:okello_website/tablet/landingpage.dart';
import 'package:okello_website/tablet/process.dart';
import 'package:okello_website/tablet/projects.dart';
import 'package:okello_website/tablet/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

final ItemScrollController itemScrollController2 = ItemScrollController();

class _MainPageState extends State<TMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [LandingPage(), About(), Services(), Process(),Projects()],
      ),
    ));
  }
}
