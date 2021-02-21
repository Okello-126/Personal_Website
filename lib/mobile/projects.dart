import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okello_website/mobile/gotproject.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorh = size.height / 753;
    final double factorw = size.width / 414;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 10, top: 30 * factorw, bottom: 20 * factorw),
          child: Text('recent projects',
              style: GoogleFonts.itim(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff7A6727))),
        ),
        SizedBox(
          height: 620 * factorh,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Card(
                  elevation: 3,
                  child: Container(
                    color: Colors.white,
                    height: 620 * factorh,
                    width: 360 * factorw,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15 * factorw),
                          child: Text(
                              index == 0
                                  ? 'FitWoman'
                                  : index == 1
                                      ? 'BookStore'
                                      : index == 2
                                          ? 'Realtors'
                                          : 'FashionStore',
                              style: GoogleFonts.ptSansNarrow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54)),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () async {
                              String url;
                              if (index == 0) {
                                url =
                                    'https://www.youtube.com/watch?v=FdwcWcuZvec';
                              }
                                if (index == 2) {
                                url =
                                    'https://www.youtube.com/watch?v=dU8EU6q9p7g';
                              }
                              if (index == 3) {
                                url =
                                    'https://www.youtube.com/watch?v=jDcgilhz7oY';
                              }
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              height: 550 * factorh,
                              width: size.width * .8,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Color(0xFF3D0303)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(index == 0
                                          ? 'images/fitness_app.png'
                                          : index == 1
                                              ? 'images/bookstore_app.png'
                                              : index == 2
                                                  ? 'images/real-estate-app.png'
                                                  : 'images/fashion_app.png'))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            width: 260,
            height: 40,
            child: Stack(
              children: [
                Container(
                  width: 240,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'got a project ?'.toUpperCase(),
                          style: GoogleFonts.ptSansNarrow(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 5,
                  child: Container(
                    width: 50,
                    height: 30,
                    color: Colors.black,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GotProject()));
                        },
                        child: Center(
                          child: Icon(FontAwesome.paper_plane_empty,
                              color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: size.width,
          height: 50,
          color: Colors.black,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Okello Gerald',
                  style: GoogleFonts.ptSansNarrow(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.copyright, size: 15, color: Colors.white),
                    SizedBox(width: 2),
                    Text(
                      '2021',
                      style: GoogleFonts.ptSansNarrow(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 10)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
