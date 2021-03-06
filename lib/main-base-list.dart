import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return new MaterialApp(
        title: title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new ListView(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.map),
                title: new Text('Map'),
              ),
              new ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Photo'),
              ),
              new ListTile(
                leading: new Icon(Icons.phone),
                title: new Text('Phone'),
              )
            ],
          ),
        ));
  }
}
