import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Halo, ${this.name}.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}