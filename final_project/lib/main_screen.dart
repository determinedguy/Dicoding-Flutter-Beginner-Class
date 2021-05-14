import 'package:flutter/material.dart';
import 'package:final_project/about_me.dart';
import 'package:final_project/motivation_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Get Up and Go!'),
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
