import 'package:flutter/material.dart';
import 'package:okello_website/mobile/about.dart';
import 'package:okello_website/mobile/landingpage.dart';
import 'package:okello_website/mobile/process.dart';
import 'package:okello_website/mobile/projects.dart';
import 'package:okello_website/mobile/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

final ItemScrollController itemScrollController = ItemScrollController();

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [LandingPage(), About(), Services(), Process(), Projects()],
      ),
    ));
  }
}
