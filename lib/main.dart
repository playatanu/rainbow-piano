import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Piano Lite'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note1.wav');
                  },
                  color: Colors.red,
                  child: Text('hello')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note2.wav');
                  },
                  color: Colors.orange,
                  child: Text('hello')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note3.wav');
                  },
                  color: Colors.yellow,
                  child: Text('hello')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note4.wav');
                  },
                  color: Colors.green,
                  child: Text('hello')),
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      AudioCache player = AudioCache();
                      player.play('note5.wav');
                    },
                    color: Colors.blue[200],
                    child: Text('hello'))),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note6.wav');
                  },
                  color: Colors.blue,
                  child: Text('hello')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('note7.wav');
                  },
                  color: Colors.purple,
                  child: Text('hello')),
            ),
          ],
        ),
      ),
    );
  }
}
