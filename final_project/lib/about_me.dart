import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'About Me',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Insert the photo profile
              CircleAvatar(
                maxRadius: 100,
                backgroundImage: AssetImage('images/about_me/photo.jpg'),
              ),
              // Add space between photo with texts by Padding
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              // Full name details
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 130,
                ),
                child: AutoSizeText(
                  'Muhammad Athallah',
                  style: GoogleFonts.nunito(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  minFontSize: 17.0,
                  maxLines: 1,
                ),
              ),
              // Add space between photo with texts by Padding
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              // Description details
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: AutoSizeText(
                  'Hello, I am Athallah. I am an undergraduate student at the Faculty of Computer Science, University of Indonesia. I am majoring in Computer Science, currently seeking to explore software engineering, web development, and mobile development.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  minFontSize: 15.0,
                  maxLines: 4,
                ),
              ),
              // Add space between texts with social media details by Padding
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Icon(FontAwesomeIcons.facebook),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    onPressed: () {
                      launch('https://www.facebook.com/mhdathallah.id/');
                    },
                  ),
                  ElevatedButton(
                    child: Icon(FontAwesomeIcons.instagram),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    onPressed: () {
                      launch('https://www.instagram.com/mhd.athallah/');
                    },
                  ),
                  ElevatedButton(
                    child: Icon(FontAwesomeIcons.twitter),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    onPressed: () {
                      launch('https://www.twitter.com/mhd_athallah/');
                    },
                  ),
                  ElevatedButton(
                    child: Icon(FontAwesomeIcons.envelope),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    onPressed: () {
                      launch(Uri.encodeFull(
                          'mailto:muhammad.athallah01@ui.ac.id'));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
