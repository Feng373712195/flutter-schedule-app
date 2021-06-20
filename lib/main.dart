import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter111',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Welcome to Flutter')),
            body: new Center(
              child: RandomWords(),
            )));
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }

  Widget _buildSuggetions(){
    return new ListView.builder(
      padding:  const EdgeInsets.all(16.0),

    )
  }
}