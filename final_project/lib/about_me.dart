import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('About Me'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Add space between AppBar with details by Padding
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            // Insert the photo profile
            Stack(
              children: <Widget>[
                Positioned(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/about_me/photo.jpg'),
                  ),
                )
              ],
            ),
            // Add space between photo with texts by Padding
            Padding(padding: const EdgeInsets.all(8.0)),
            // Full name details
            RichText(
              text: TextSpan(
                text: 'Muhammad Athallah',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            // Add space between photo with texts by Padding
            Padding(padding: const EdgeInsets.all(8.0)),
            // Description details
            RichText(
              text: TextSpan(
                text: 'Hello, I am Athallah. I am an undergraduate student at the Faculty of Computer Science, University of Indonesia. I am majoring in Computer Science, currently seeking to explore software engineering, web development, and mobile development.',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            // Add space between texts with social media details by Padding
            Padding(
              padding: const EdgeInsets.all(15.0)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Icon(FontAwesomeIcons.facebook),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  onPressed: () {
                    launch('https://www.facebook.com/mhdathallah.id/');
                  },
                ),
                ElevatedButton(
                  child: Icon(FontAwesomeIcons.instagram),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  onPressed: () {
                    launch('https://www.instagram.com/mhd.athallah/');
                  },
                ),
                ElevatedButton(
                  child: Icon(FontAwesomeIcons.twitter),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  onPressed: () {
                    launch('https://www.twitter.com/mhd_athallah/');
                  },
                ),
                ElevatedButton(
                  child: Icon(FontAwesomeIcons.envelope),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  onPressed: () {
                    launch(Uri.encodeFull('mailto:muhammad.athallah01@ui.ac.id'));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
