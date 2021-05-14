import 'package:flutter/material.dart';
import 'package:final_project/about_me.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Up and Go!'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return InputMobile();
          } else {
            return InputWeb();
          }
        },
      ),
    );
  }
}

class InputMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return;
  }
}

class InputWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return;
  }
}