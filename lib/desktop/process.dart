import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Process extends StatefulWidget {
  Process({Key key}) : super(key: key);

  @override
  _ProcessState createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  Container _buildService(Color color, String process, String image) {
    return Container(
      width: 230,
      height: 170,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
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
                      width: 50,
                      height: 30,
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
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 8,
                  ),
                  child: Text(process,
                      style: GoogleFonts.maShanZheng(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 8)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30, bottom: 10),
          child: Text('process',
              style: GoogleFonts.itim(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff7A6727))),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                _buildService(
                  Color(0xffFDF1F0),
                  'Research',
                  'images/research.jpeg',
                ),
                _buildService(
                  Color(0xffF1F0F0),
                  'Design',
                  'images/design.jpeg',
                ),
                _buildService(
                  Color(0xffFCFAF0),
                  'Development',
                  'images/coding.jpeg',
                ),
                _buildService(
                  Color(0xffF9F1F0),
                  'Testing',
                  'images/testing.jpg',
                ),
                _buildService(
                  Color(0xffF2F0FC),
                  'Deployment',
                  'images/deploy.jpeg',
                ),
                _buildService(
                  Color(0xffF8F9F0),
                  'Maintenance',
                  'images/upgrade.jpeg',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
