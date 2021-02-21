import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class GotProject extends StatelessWidget {
  const GotProject({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  Expanded(flex: 6, child: Container(color: Colors.white)),
                  Expanded(flex: 4, child: Container(color: Color(0xffF2EEEE)))
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*   */
                  Center(
                    child: Image.asset(
                      'images/excited.png',
                    //  width: 312 * size.width / 414,
                      height: 502 * size.height / 753,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30 * size.width / 414),
                      child: Text(
                        'Excited to work with you',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: Color(0xff3B0918),
                          fontSize: 20 * size.width / 414,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20 * size.width / 414),
                    child: Text(
                      'Let\'s discuss it',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSansNarrow(
                        color: Color(0xff363535),
                        fontSize: 22 * size.width / 414,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 284 * size.width / 414,
                      height: 35,
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: GestureDetector(
                              onTap: () async {
                                final Uri params = Uri(
                                  scheme: 'mailto',
                                  path: 'okellogeralddev@gmail.com',
                                  query: 'Client', //add subject and body here
                                );

                                var url = params.toString();
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff750A14),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Center(
                                      child: Icon(Icons.mail,
                                          color: Colors.white))),
                            ),
                          ),
                          Expanded(flex: 2, child: Container()),
                          Expanded(
                              flex: 4,
                              child: GestureDetector(
                                onTap: () async {
                                  final link = WhatsAppUnilink(
                                    phoneNumber: '+255-743788991',
                                    text: "Hello!",
                                  );
                                  // Convert the WhatsAppUnilink instance to a string.
                                  // Use either Dart's string interpolation or the toString() method.
                                  // The "launch" method is part of "url_launcher".
                                  await launch('$link');
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff750A14),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Center(
                                        child: Icon(FontAwesome.whatsapp,
                                            color: Colors.white))),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
