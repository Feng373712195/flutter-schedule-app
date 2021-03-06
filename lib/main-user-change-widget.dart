import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  Widget build(BuildContext context) {
    return new Text('Count $count');
  }
}

class CounterIncrementor extends StatelessWidget{

  CounterIncrementor({ this.onPressed });

  final VoidCallback onPressed;

  Widget build(BuildContext context){
    return new RaisedButton(onPressed: onPressed, child: new Text('Increment'))
  }
}


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementor(onPressed: _increment),
        new CounterDisplay(count: _counter),
      ],
    );
  }
}
