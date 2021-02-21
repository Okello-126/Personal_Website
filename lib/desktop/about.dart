import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/mobile/contacts.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorw = size.width / 800;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* 
        SizedBox(height: 20), */
        SizedBox(height: 40),
        Center(
            child: Card(
          elevation: 3,
          child: Container(
            width: 790,
            //  width: 1200 * size.width / 1366,
            height: 440,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    //  left: 27,
                    top: 0,
                    child: Container(
                        width: 790,
                        //   width: 1200 * size.width / 1366,
                        height: 440,
                        color: Color(0xffF1F0F0))),
                Positioned(
                    left: 17,
                    //  left: 0,
                    top: 8,
                    child: Container(
                        width: 770,
                        //   width: 1180 * size.width / 1366,
                        height: 420,
                        //  color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10 * factorw),
                              child: Container(
                                width: 300,
                                height: 400,
                                decoration: BoxDecoration(
                                    color: Color(0xffDBD5CC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Image.asset('images/landing.png',
                                    width: 300, height: 400, fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 420,
                                //  color:Colors.yellow,
                                padding: EdgeInsets.only(
                                    left: 30 * size.width / 1366),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'about me',
                                      style: GoogleFonts.ranchers(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Text(
                                        'Hello! I\'m Okello Gerald.\nA freelance apps developer',
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.ptSansNarrow(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    SizedBox(
                                      width: 400,
                                      //   width: 750 * size.width / 1366,
                                      child: AutoSizeText(
                                          'I am passionate with helping businesses build and grow their brand through technological innovation. By leveraging the latest technologies, your business will simultaneously reach the target market on both iOS and Android devices, saving your budget and development time. I look forward to working on your next idea for a web or smartphone app for you.',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.ptSansNarrow(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54)),
                                    ),
                                    Container(
                                      width: 400,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          //  SizedBox(width: 8),
                                          Expanded(
                                            flex: 1,
                                            child: TextButton(
                                                onPressed: () async {
                                                  const url =
                                                      'https://github.com/Okello-126';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.black)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 15),
                                                    Icon(FontAwesome5.github,
                                                        color: Colors.black),
                                                    SizedBox(height: 15),
                                                    Text('Github',
                                                        style: GoogleFonts
                                                            .ptSansNarrow(
                                                                fontSize: 16)),
                                                    SizedBox(height: 5),
                                                  ],
                                                )),
                                          ),
                                          SizedBox(width: 7),
                                          Expanded(
                                            flex: 1,
                                            child: TextButton(
                                                onPressed: () async {
                                                  const url =
                                                      'https://dribbble.com/Okello126';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                               style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.black)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 15),
                                                    Icon(FontAwesome5.dribbble,
                                                        color:
                                                            Color(0xff82070F)),
                                                    SizedBox(height: 15),
                                                    Text('Dribble',
                                                        style: GoogleFonts
                                                            .ptSansNarrow(
                                                                fontSize: 16)),
                                                    SizedBox(height: 5),
                                                  ],
                                                )),
                                          ),
                                          SizedBox(width: 7),
                                          Expanded(
                                            flex: 1,
                                            child: TextButton(
                                                onPressed: () async {
                                                  const url =
                                                      'https://www.linkedin.com/in/okello-gerald-435254206/';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                              style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.black)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 15),
                                                    Icon(FontAwesome5.linkedin,
                                                        color:
                                                            Color(0xff161067)),
                                                    SizedBox(height: 15),
                                                    Text('LinkedIn',
                                                        style: GoogleFonts
                                                            .ptSansNarrow(
                                                                fontSize: 16)),
                                                    SizedBox(height: 5),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                       style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.black),
                                                 /*    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white) */),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Contacts()));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 3),
                                          child: Text('Get in touch',
                                              style: GoogleFonts.ptSansNarrow(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )))
              ],
            ),
          ),
        )),
      ],
    );
  }
}
