import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Widget buildKey() {
    Expanded(
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          playSound(1);
        },
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
            children: [
             buildKey();
            buildKey();
          buildKey();
        buildKey();
    buildKey();
    buildKey();
    buildKey();
            ],
          ),
        ),
      ),
    );
  }
}
