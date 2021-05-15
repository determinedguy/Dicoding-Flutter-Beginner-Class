import 'package:flutter/material.dart';
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
          return InputMobile();
          /*if (constraints.maxWidth <= 600) {
            return InputMobile();
          }
          else {
            return InputWeb();
          }*/
        },
      ),
    );
  }
}

class InputMobile extends StatefulWidget {
  @override
  _InputMobileState createState() => _InputMobileState();
}

class _InputMobileState extends State<InputMobile> {
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
                  horizontal: 200,
                ),
                child: AutoSizeText(
                  'Halo!',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  minFontSize: 20.0,
                  maxLines: 1,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: AutoSizeText(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    //fontFamily: 'Oxygen',
                  ),
                  minFontSize: 13.0,
                  maxLines: 4,
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Ketik namamu disini :)',
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

/*
class InputWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return;
  }
}
*/
