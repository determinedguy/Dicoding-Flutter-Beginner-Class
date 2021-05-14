import 'package:flutter/material.dart';

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
                style: TextStyle(
                  fontSize: 16.0,
                  //fontFamily: 'Oxygen',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}