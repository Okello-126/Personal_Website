import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/mobile/contacts.dart';
import 'package:okello_website/tablet/contacts.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'ABOUT',
            style: GoogleFonts.itim(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xff7A6727)),
          ),
        ),
        SizedBox(height: 20),
        Center(
            child: Container(
          width: 650,
          height: 340,
          child: Stack(
            children: [
              Positioned(
                  left: 27,
                  top: 0,
                  child: Container(
                      width: 650, height: 340, color: Color(0xffF1F0F0))),
              Positioned(
                  left: 0,
                  top: 8,
                  child: Container(
                      width: 650,
                      height: 330,
                      //     color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8 * factorw),
                            child: Stack(
                              children: [
                                Container(
                                  width: 250,
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Color(0xffDBD5CC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image.asset('images/landing.png',
                                      width: 250,
                                      height: 400,
                                      fit: BoxFit.cover),
                                ),
                                Positioned(
                                  bottom: 10,
                                  child: Container(
                                    width: 240,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 8),
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
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                  foregroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black)),
                                              child: Icon(FontAwesome5.github,
                                                  color: Colors.black)),
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
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.black)),
                                            child: Icon(FontAwesome5.dribbble,
                                                color: Color(0xff82070F)),
                                          ),
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
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.black)),
                                            child: Icon(FontAwesome5.linkedin,
                                                color: Color(0xff161067)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 390 * factorw,
                            height: 375,
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Hello! I\'m Okello Gerald.\nA freelance web and mobile apps developer',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.acme(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54)),
                                SizedBox(
                                  width: 380 * factorw,
                                  height: 210,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 5 * factorw),
                                    child: AutoSizeText(
                                        'I am passionate with helping businesses build and grow their brand through technological innovation. By leveraging the latest technologies, your business will simultaneously reach the target market on both iOS and Android devices, saving your budget and development time. I look forward to working on your next idea for a web or smartphone app for you.',
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.dekko(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Container(
                                                      child: ScreenTypeLayout
                                                          .builder(
                                                        mobile: (BuildContext
                                                                context) =>
                                                            Contacts(),
                                                        tablet: (BuildContext
                                                                context) =>
                                                            TContacts(),
                                                      ),
                                                    )));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        child: Text('Get in touch',
                                            style: GoogleFonts.josefinSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      )))
            ],
          ),
        )),
      ],
    );
  }
}
