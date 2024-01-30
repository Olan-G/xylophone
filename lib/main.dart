/*
    John Olan S. Gomez
    Software Engineer Intern
    January 30, 2024
    Using Flutter and Dart Packages to Speed Up Development
    Xylophone App
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function to play sound
  void playSound(int num) async {
    final player = AudioPlayer();
    player.audioCache = AudioCache(prefix: 'assets/');
    await player.play(AssetSource('note$num.wav'));
  }

  // function to build a key
  Expanded buildKey({required int note, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(note);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
          ),
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, note: 1),
            buildKey(color: Colors.orange, note: 2),
            buildKey(color: Colors.yellow, note: 3),
            buildKey(color: Colors.green, note: 4),
            buildKey(color: Colors.blue, note: 5),
            buildKey(color: Colors.indigo, note: 6),
            buildKey(color: Colors.purple, note: 7),
          ],
        )),
      ),
    );
  }
}
