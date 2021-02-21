import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/desktop/about.dart';
import 'package:okello_website/desktop/landingpage.dart';
import 'package:okello_website/desktop/process.dart';
import 'package:okello_website/desktop/projects.dart';
import 'package:okello_website/desktop/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

final ItemScrollController itemScrollController2 = ItemScrollController();
double appbarheight = 0;

class _MainPageState extends State<DMainPage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appbarheight,
        backgroundColor: Color(0xff031F3C),
        title: Text('gerald.',
            style: GoogleFonts.ptSansNarrow(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollEnd) {
          var metrics = scrollEnd.metrics;

          if (metrics.pixels == 0) {
            setState(() {
              appbarheight = 0;
            });
          } else if (metrics.pixels >= .5) {
            setState(() {
              appbarheight = 40;
            });
          }

          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              LandingPage(),
              About(),
              Services(),
              Process(),
              Projects()
            ],
          ),
        ),
      ),
    );
  }
}
