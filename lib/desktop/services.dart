import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        Center(
          child: Container(
            height: 450,
            width: 1280 * size.width / 1366,
            // color: Colors.yellow,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  child: Container(
                    width: 1280 * size.width / 1366,
                    height: 410,
                    color: Color(0xffEFECEC),
                    padding: EdgeInsets.only(left: 420 * size.width / 1366),
                    child: Center(
                      child: Container(
                        width: 900 * size.width / 1366,
                        height: 300,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Center(
                                    child: Container(
                                  color: Colors.white.withOpacity(.9),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text('Web Apps Development',
                                        style: GoogleFonts.ptSansNarrow(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/web.png'))),
                              ),
                            ),
                            SizedBox(width: 15 * size.width / 1366),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Center(
                                    child: Container(
                                      color: Colors.white.withOpacity(.9),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Text('Mobile Apps Development',
                                            style: GoogleFonts.ptSansNarrow(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage('images/app.png')))),
                            ),
                            SizedBox(width: 20 * size.width / 1366),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 40,
                  child: Container(
                    height: 350,
                    width: 200,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Color(0xffFCFAF0),
                              child: Center(
                                child: Text('services',
                                    style: GoogleFonts.ptSansNarrow(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'quality and exceptional product is what you should expect',
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        /* Container(
          width: 1000 * size.width / 1366,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 30),
              Expanded(
                flex: 1,
                child: Container(
                  width: 386,
                  height: 260,
                  child: Stack(
                    children: [
                      Material(
                        elevation: 3,
                        child: Container(
                            width: 386,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/web.png')))),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff031F3C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 4),
                              child: Text('Websites Development',
                                  style: GoogleFonts.dekko(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal)),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: 386,
                    height: 260,
                    child: Stack(
                      children: [
                        Material(
                          elevation: 3,
                          child: Container(
                              width: 386,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/app.png')))),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff031F3C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                child: Text('Apps Development',
                                    style: GoogleFonts.dekko(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal)),
                              )),
                        )
                      ],
                    ),
                  )),
              SizedBox(width: 20),
            ],
          ),
        ) */
      ],
    );
  }
}
