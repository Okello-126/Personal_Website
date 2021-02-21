import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorw = size.width / 800;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 500,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/hello1.png'))),
              ),
            ),
            Positioned(
              left: 5 * factorw,
              top: 370,
              child: Card(
                elevation: 3,
                child: Container(
                  width: 770 * factorw,
                  height: 100,
                  padding: EdgeInsets.only(
                    left: 8 * factorw,
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Launch your next web and mobile apps with confidence',
                          style: GoogleFonts.macondoSwashCaps(
                              fontSize: 30 * factorw,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            child: Text('Get Started',
                                style: GoogleFonts.maShanZheng(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white)),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 10)
    ]);
  }
}
