import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/about_me.dart';
import 'package:final_project/motivation_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Get Up and Go!',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black87,
              ),
              tooltip: 'About Me',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutMeScreen();
                }));
              }),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return InputScreen();
        }
      ),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController _controller = TextEditingController();
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 70,
                backgroundImage: AssetImage('images/main_screen/cover.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 180,
                ),
                child: AutoSizeText(
                  'Hello!',
                  style: GoogleFonts.nunito(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  minFontSize: 17.0,
                  maxLines: 1,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: AutoSizeText(
                  'Are you feeling down? Do you feel like you want to surrender your life? Hey, don\'t go anywhere! Type your name (either your full name or your nickname) and let me give you "the thing" you need right now.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: 20.0,
                  ),
                  minFontSize: 13.0,
                  maxLines: 4,
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Type your name here :)',
                  labelText: 'Nama',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Motivate Yourself!'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                onPressed: () {
                  name = _controller.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MotivationScreen(name: name);
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
