import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                player.audioCache = AudioCache(prefix: 'assets/');
                await player.play(AssetSource('note1.wav'));
              },
              child: Text('click me'),
            ),
          ),
        ),
      ),
    );
  }
}
