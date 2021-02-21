import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'services',
            style: GoogleFonts.itim(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xff7A6727)),
          ),
        ),
        SizedBox(height: 20),
        Row(
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
                            child: Text('Web Apps Development',
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
                              child: Text('Mobile Apps Development',
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
        )
      ],
    );
  }
}
