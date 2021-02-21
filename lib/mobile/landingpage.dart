import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/mobile/contacts.dart';
import 'package:okello_website/mobile/getstarted.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

enum data { about, projects, contacts }

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorh = size.height / 753;
    final double factorw = size.width / 414;
    return Column(
      children: [
        Container(
            height: 630 * size.height / 753,
            width: size.width,
            child: Stack(
              children: [
                Image.asset('images/14.png',
                    width: size.width,
                    height: 630 * factorh,
                    fit: BoxFit.cover),
                Positioned(
                  left: 17 * factorw,
                  top: 480 * factorh,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 70 * factorh,
                        width: 370 * factorw,
                        child: AutoSizeText(
                            'Launch your next web and mobile apps with confidence',
                            textAlign: TextAlign.justify,
                            maxLines: 2,
                            style: GoogleFonts.macondoSwashCaps(
                                fontSize: 30 * factorw,
                                fontWeight: FontWeight.normal,
                                color: Colors.white)),
                      ),
                      SizedBox(height: 20 * factorw),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contacts()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10 * factorw, vertical: 5 * factorh),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetStarted()));
                              },
                              child: Text('Get Started',
                                  style: GoogleFonts.maShanZheng(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
