import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/mobile/contacts.dart';
import 'package:okello_website/tablet/contacts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorh = size.height / 753;
    final double factorw = size.width / 414;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20 * factorw),
          child: Text('about',
              style: GoogleFonts.itim(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff7A6727))),
        ),
        Container(
          width: size.width,
          color: Color(0xffECE8E8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45 * factorh),
              Container(
                  width: 400 * factorw,
                  height: 220 * factorh,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 13 * factorw),
                          child: Container(
                              color: Colors.white,
                              width: 400 * factorw,
                              height: 200 * factorh),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20 * factorw, top: 0 * factorh),
                        child: Row(
                          children: [
                            Container(
                              width: 313 * factorw,
                              height: 210 * factorh,
                              color: Color(0xffDBD5CC),
                              child: Image.asset('images/me.png',
                                  width: 313 * factorw,
                                  height: 210 * factorh,
                                  fit: BoxFit.cover),
                            ),
                            Center(
                              child: Container(
                                width: 66 * factorw,
                                height: 185 * factorh,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        const url =
                                            'https://github.com/Okello-126';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(FontAwesome5.github,
                                          color: Colors.black),
                                    ),
                                    SizedBox(height: 10 * factorh),
                                    GestureDetector(
                                      onTap: () async {
                                        const url =
                                            'https://dribbble.com/Okello126';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(FontAwesome5.dribbble,
                                          color: Color(0xff82070F)),
                                    ),
                                    SizedBox(height: 10 * factorh),
                                    GestureDetector(
                                      onTap: () async {
                                        const url =
                                            'https://www.linkedin.com/in/okello-gerald-435254206/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(FontAwesome5.linkedin,
                                          color: Color(0xff161067)),
                                    ),
                                    SizedBox(height: 5 * factorh)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 10 * factorh),
              Padding(
                padding: EdgeInsets.only(left: 13 * factorh),
                child: Text(
                    'Hello I\'m Okello Gerald\nA freelance web and mobile apps developer',
                    style: GoogleFonts.acme(
                        fontSize: 18 * factorw,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10 * factorh),
              Padding(
                padding: EdgeInsets.only(left: 13 * factorh),
                child: SizedBox(
                  width: 373 * factorw,
                  child: AutoSizeText(
                      'I am passionate with helping businesses build and grow their brand through technological innovation. By leveraging the latest technologies, your business will simultaneously reach the target market on both iOS and Android devices, saving your budget and development time. I look forward to working on your next idea for a web or smartphone app for you.',
                      style: GoogleFonts.dekko(
                          fontSize: 18 * factorw,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                ),
              ),
              SizedBox(height: 10 * factorh),
              Padding(
                padding: EdgeInsets.only(left: 13 * factorh),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10 * factorw, vertical: 7 * factorh),
                      child: Text('Get in touch',
                          style: GoogleFonts.josefinSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )),
              ),
              SizedBox(height: 5 * size.height / 753)
            ],
          ),
        ),
      ],
    );
  }
}
