import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MotivationScreen extends StatelessWidget {
  final String name;

  MotivationScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: AutoSizeText(
                'Hi, ${this.name}. Let me give you love and affection.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                ),
                minFontSize: 16.0,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/1.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: AutoSizeText(
                'You are perfectly put together; your kindness, your happiness, your sadness, your anger, your clumsiness, your insecurity, everything about you. You don\'t have to listen to other people, because you are you!',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                ),
                minFontSize: 16.0,
                maxLines: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/2.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: AutoSizeText(
                'Hold on, ${this.name}. Stay still.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 25.0,
                ),
                minFontSize: 15.0,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/3.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: AutoSizeText(
                'Do you know who I see right now? I see the coolest person I\'ve seen today; you, ${this.name}. You are a beautiful person who is worthy of love and affection.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                ),
                minFontSize: 14.0,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/4.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: AutoSizeText(
                'Are you smiling? Aww.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 25.0,
                ),
                minFontSize: 15.0,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/5.jpeg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: AutoSizeText(
                'You are really cool, ${this.name}. You\'re an amazing person because I think it is difficult to survive in this hard life, especially with the problems of life that came and went.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                ),
                minFontSize: 14.0,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/6.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: AutoSizeText(
                'Before you go, I wish you have a good life; starting from this moment. Keep being yourself and make yourself proud and happy. Be grateful for everything you have. Don\'t forget to rest when you\'re tired. Lastly, I love you, ${this.name}. Thanks for staying alive until this moment.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                ),
                minFontSize: 14.0,
                maxLines: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/motivation_screen/7.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
