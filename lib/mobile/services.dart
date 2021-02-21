import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorh = size.height / 753;
    final double factorw = size.width / 414;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30 * factorh),
          child: Text('services',
              style: GoogleFonts.itim(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                   color: Color(0xff7A6727))),
        ),
        Center(
            child: Container(
          width: 386 * factorw,
          height: 260 * factorh,
          child: Stack(
            children: [
              Material(
                elevation: 3,
                child: Container(
                    width: 386 * factorw,
                    height: 250 * factorh,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/web.png')))),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    /*    width: 281,
                    height: 53, */
                    decoration: BoxDecoration(
                        color: Color(0xff031F3C),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12 * factorw, vertical: 4 * factorh),
                      child: Text('Web Apps Development',
                          style: GoogleFonts.dekko(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal)),
                    )),
              )
            ],
          ),
        )),
        SizedBox(height: 20 * factorh),
        Center(
            child: Container(
          width: 386 * factorw,
          height: 260 * factorh,
          child: Stack(
            children: [
              Material(
                elevation: 3,
                child: Container(
                    width: 386 * factorw,
                    height: 250 * factorh,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/app.png')))),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    /*    width: 281,
                    height: 53, */
                    decoration: BoxDecoration(
                        color: Color(0xff031F3C),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12 * factorw, vertical: 4 * factorh),
                      child: Text('Mobile Apps Development',
                          style: GoogleFonts.dekko(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal)),
                    )),
              )
            ],
          ),
        ))
      ],
    );
  }
}
