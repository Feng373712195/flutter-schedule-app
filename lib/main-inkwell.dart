import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final title = 'InkWell Demo';

    return new MaterialApp(
      title: title,
      home: new MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(child: new MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text('Tap')));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}
