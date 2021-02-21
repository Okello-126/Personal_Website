import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Process extends StatefulWidget {
  @override
  _ProcessState createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
   // final double factorh = size.height / 753;
    final double factorw = size.width / 414;

    Container _buildService(Color color, String process, String image) {
      return Container(
        width: 180 * factorw,
        height: 110,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                      width: 40*factorw,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F1F1),
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Center(
                        child: Text(
                            process == 'Research'
                                ? '1.'
                                : process == 'Design'
                                    ? '2.'
                                    : process == 'Development'
                                        ? '3.'
                                        : process == 'Testing'
                                            ? '4.'
                                            : process == 'Deployment'
                                                ? '5.'
                                                : '6.',
                            style: GoogleFonts.maShanZheng(
                                fontSize: 16*factorw,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8,),
                  child: Text(process,
                      style: GoogleFonts.maShanZheng(
                          fontSize: 18*size.width/414,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 4)
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30 * factorw),
          child: Text('process',
              style: GoogleFonts.itim(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                    color: Color(0xff7A6727))),
        ),
        Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                _buildService(Color(0xffFDF1F0), 'Research','images/research.jpeg',),
                _buildService(Color(0xffF1F0F0), 'Design','images/design.jpeg',),
                _buildService(Color(0xffFCFAF0), 'Development','images/coding.jpeg',),
                _buildService(Color(0xffF9F1F0), 'Testing','images/testing.jpg',),
                _buildService(Color(0xffF2F0FC), 'Deployment','images/deploy.jpeg',),
                _buildService(Color(0xffF8F9F0), 'Maintenance','images/upgrade.jpeg',),
              ],
            ),
          ),
        )
      ],
    );
  }
}
