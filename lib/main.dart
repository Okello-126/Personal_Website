import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/desktop/desktopmain.dart';
import 'package:okello_website/mobile/contacts.dart';
import 'package:okello_website/tablet/contacts.dart';

import 'package:okello_website/tablet/tabletmain.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'mobile/mainpage.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 800, tablet: 480, watch: 200),
  );
  runApp(MyApp());
}

//double appbarheight = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      // color: Color(0xffEBE8E0),
      title: 'Okello Gerald',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     
      routes: {
        'home': (context) => HomePage(),
       
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    final Size size = MediaQuery.of(context).size;
    //   final double factorw = size.width / 480;
    // final double factorh = size.height / 630;
    /* TextStyle style = GoogleFonts.ptSansNarrow(
        fontWeight: FontWeight.bold,
        fontSize: 20 * size.width / 414,
        color: Color(0xff3C3A3A)); */
    return Scaffold(
      appBar: size.width < 800
          ? AppBar(
              elevation: 0,
              toolbarHeight: 40,
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text('GERALD',
                    style: GoogleFonts.josefinSans(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Container(
                                    child: ScreenTypeLayout.builder(
                                      mobile: (BuildContext context) =>
                                          Contacts(),
                                      tablet: (BuildContext context) =>
                                          TContacts(),
                                    ),
                                  )));
                    },
                    child: Container(
                      height: 25,
                      color: Color(0xff031F3C),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        child: Center(
                          child: Text('Contact me.',
                              style: GoogleFonts.josefinSans(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          : AppBar(
              elevation: 0,
              toolbarHeight: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text('gerald.',
                  style: GoogleFonts.ptSansNarrow(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
      body: Container(
          child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => MainPage(),
        tablet: (BuildContext context) => TMainPage(),
        desktop: (BuildContext context) => DMainPage(),
        watch: (BuildContext context) => Container(
            color: Colors.purple,
            child: Text('watch',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40))),
      )),
    );
  }
}
