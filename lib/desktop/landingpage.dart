import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/desktop/contacts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //final double factorw = size.width / 1366;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/hello1.png'))),
              ),
            ),
            Positioned(
                top: 20,
                child: Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Okello Gerald',
                            style: GoogleFonts.josefinSans(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contacts()));
                          },
                          child: Container(
                            color: Color(0xff031F3C),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Center(
                                child: Text('Contact me.',
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
              child: Text('Launch your next app with confidence',
                  style: GoogleFonts.josefinSans(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
      SizedBox(height: 10)
    ]);
  }
}
