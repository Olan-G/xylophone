import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) async {
    final player = AudioPlayer();
    player.audioCache = AudioCache(prefix: 'assets/');
    await player.play(AssetSource('note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () async {
                playSound(1);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(2);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(3);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(4);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(5);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(6);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.indigo)),
              child: Container(),
            ),
            TextButton(
              onPressed: () async {
                playSound(7);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple)),
              child: Container(),
            ),
          ],
        )),
      ),
    );
  }
}
