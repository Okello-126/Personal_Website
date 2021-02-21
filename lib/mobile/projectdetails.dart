import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class ProjectDetails extends StatefulWidget {
  ProjectDetails({Key key}) : super(key: key);

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();
TextEditingController _controller3 = TextEditingController();

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double factorh = size.height / 753;
    final double factorw = size.width / 414;

    TextStyle hintstyle = GoogleFonts.ptSansNarrow(
        fontSize: 16 * factorw, fontWeight: FontWeight.bold);
    TextStyle labelstyle =
        GoogleFonts.dekko(fontSize: 20 * factorw, fontWeight: FontWeight.bold);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(20 * factorw),
          color: Color(0xFFF1F1F1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'PROJECT DETAILS',
                  style: GoogleFonts.ptSansNarrow(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50 * factorh,
                  child: TextField(
                    controller: _controller1,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: hintstyle,
                        labelStyle: labelstyle,
                        hintText: 'Username',
                        labelText: 'Username'),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50 * factorh,
                  child: TextField(
                    controller: _controller2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: hintstyle,
                        labelStyle: labelstyle,
                        hintText: 'Phone/Email',
                        labelText: 'Phone/Email'),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 300 * factorh,
                  width: size.width - 20 * factorw,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    controller: _controller3,
                    textAlign: TextAlign.start,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: hintstyle,
                        labelStyle: labelstyle,
                        hintText: 'Project details',
                        labelText: 'Project details'),
                  ),
                ),
              ),
              Text(
                'Submit via :',
                style: GoogleFonts.ptSansNarrow(
                    fontSize: 18 * factorw,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () async {
                      final link = WhatsAppUnilink(
                        phoneNumber: '+255-743788991',
                        text: _controller3.text,
                      );
                      // Convert the WhatsAppUnilink instance to a string.
                      // Use either Dart's string interpolation or the toString() method.
                      // The "launch" method is part of "url_launcher".
                      await launch('$link');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      width: 150 * factorw,
                      padding: EdgeInsets.symmetric(vertical: 12 * factorh),
                      child: Column(
                        children: [
                          Image.asset('images/whatsapp.png',
                              width: 35 * factorw,
                              height: 35 * factorw,
                              fit: BoxFit.cover),
                          SizedBox(
                            height: 10 * factorh,
                          ),
                          Text(
                            'Whatsapp:',
                            style: GoogleFonts.ptSansNarrow(
                                fontSize: 18 * factorw,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'OR',
                    style: GoogleFonts.ptSansNarrow(
                        fontSize: 18 * factorw,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () async {
                      final Uri params = Uri(
                        scheme: 'mailto',
                        path: 'okellogerald126@gmail.com',
                        query: 'New Project', //add subject and body here
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
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      width: 150 * factorw,
                      padding: EdgeInsets.symmetric(vertical: 12 * factorh),
                      child: Column(
                        children: [
                          Image.asset('images/mail.png',
                              width: 35 * factorw,
                              height: 35 * factorw,
                              fit: BoxFit.cover),
                          SizedBox(
                            height: 10 * factorh,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.ptSansNarrow(
                                fontSize: 18 * factorw,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
