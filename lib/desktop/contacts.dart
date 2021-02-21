import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    Text text(String text, Color color) {
      return Text(text,
          style: GoogleFonts.ptSansNarrow(
              fontSize: 18, fontWeight: FontWeight.bold, color: color));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: size.width,
            height: 650,
            color: Color(0xffF8F8F8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20),
                text('REACH ME VIA :', Colors.black),
                Container(
                  width: 364,
                  height: 199,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: 341,
                        height: 120,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        launch("tel://+255-743788991");
                                      },
                                      child: Image.asset(
                                        'images/call.png',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    text('Phone', Colors.black54)
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25),
                                  child: Container(
                                      width: 2,
                                      color: Color(0xffECEAEA),
                                      height: 70),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        final link = WhatsAppUnilink(
                                          phoneNumber: '+255-743788991',
                                          text:
                                              "Hello!",
                                        );
                                        // Convert the WhatsAppUnilink instance to a string.
                                        // Use either Dart's string interpolation or the toString() method.
                                        // The "launch" method is part of "url_launcher".
                                        await launch('$link');
                                      },
                                      child: Image.asset(
                                        'images/whatsapp.png',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    text('Whatsapp', Colors.black54)
                                  ],
                                )
                              ],
                            ),
                            Container(
                                width: double.maxFinite,
                                color: Color(0xffECEAEA),
                                padding: EdgeInsets.only(top: 5),
                                height: 2),
                          ],
                        ),
                      ),
                      Container(
                          width: double.maxFinite,
                          height: 40,
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: text('0743-788-991', Colors.black),
                          )))
                    ],
                  ),
                ),
                text('OR', Colors.black),
                Container(
                    width: 364,
                    height: 199,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //SizedBox(height: 5 * size.height / 753),
                        GestureDetector(
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
                          child: Image.asset(
                            'images/mail.png',
                            width: 35,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        text('Email', Colors.black54),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                              width: double.maxFinite,
                              color: Color(0xffECEAEA),
                              height: 2),
                        ),
                        text('okellogeralddev@gmail.com', Colors.black),
                      ],
                    )),
                
                Center(
                  child: Text(
                    'Click on the icons to be taken directly\nto the medium you\'ve chosen.',
                    style: GoogleFonts.kaushanScript(color: Color(0xff5E0303),fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
