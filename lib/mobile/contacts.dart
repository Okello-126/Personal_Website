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
              fontSize: 18 * size.width / 414,
              fontWeight: FontWeight.bold,
              color: color));
    }

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xffF8F8F8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20 * size.height / 753),
            Padding(
              padding: EdgeInsets.only(left: 25 * size.width / 414),
              child: text('Reach me via :', Colors.black),
            ),
            Center(
              child: Container(
                width: 364 * size.width / 414,
                height: 199 * size.height / 753,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20 * size.height / 753),
                    Container(
                      width: 341 * size.width / 414,
                      height: 120 * size.height / 753,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      launch("tel://+255-743788991");
                                    },
                                    child: Image.asset(
                                      'images/call.png',
                                      width: 35 * size.width / 414,
                                      height: 35 * size.width / 414,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 10 * size.height / 753),
                                  text('Phone', Colors.black54)
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 25 * size.height / 753),
                                child: Container(
                                    width: 2,
                                    color: Color(0xffECEAEA),
                                    height: 70 * size.height / 753),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
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
                                    child: Image.asset(
                                      'images/whatsapp.png',
                                      width: 35 * size.width / 414,
                                      height: 35 * size.width / 414,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 10 * size.height / 753),
                                  text('Whatsapp', Colors.black54)
                                ],
                              )
                            ],
                          ),
                          Container(
                              width: double.maxFinite,
                              color: Color(0xffECEAEA),
                              padding:
                                  EdgeInsets.only(top: 5 * size.height / 753),
                              height: 2),
                        ],
                      ),
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 40 * size.height / 753,
                        child: Center(
                            child: Padding(
                          padding:
                              EdgeInsets.only(bottom: 20 * size.height / 753),
                          child: text('0743-788-991', Colors.black),
                        )))
                  ],
                ),
              ),
            ),
            Center(child: text('OR', Colors.black)),
            Center(
              child: Container(
                  width: 364 * size.width / 414,
                  height: 199 * size.height / 753,
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
                          width: 35 * size.width / 414,
                          height: 35 * size.width / 414,
                          fit: BoxFit.cover,
                        ),
                      ),
                      text('Email', Colors.black54),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10 * size.width / 414),
                        child: Container(
                            width: double.maxFinite,
                            color: Color(0xffECEAEA),
                            height: 2),
                      ),
                      text('okellogeralddev@gmail.com', Colors.black),
                    ],
                  )),
            ),
          
            Center(
              child: Text(
                'Click on the icons to be taken directly\nto the medium you\'ve chosen.',
                style: GoogleFonts.kaushanScript(color: Color(0xff5E0303),fontSize: 18*size.width/414),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
