import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'Flutter Tutorial', home: new MyButton()));
}

class MyButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}
