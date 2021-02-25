import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey(color, number) {
    return Expanded(
      child: FlatButton(
        color: Colors.$color,
        onPressed: () {
          playSound(number);
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
             buildKey('red', 1),
            buildKey('orange', 2),
          buildKey('yellow', 3),
        buildKey('green', 4),
    buildKey('tale', 5),
    buildKey('blue', 6),
    buildKey('purple', 7),
            ],
          ),
        ),
      ),
    );
  }
}
