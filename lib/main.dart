import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  TextButton _createButton(MaterialColor color, int soundNumber) {
    return TextButton(
      onPressed: () {
        _playSound(soundNumber);
      },
      child: Text(''),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            _createButton(Colors.red, 1),
            _createButton(Colors.orange, 2),
            _createButton(Colors.yellow, 3),
            _createButton(Colors.green, 4),
            _createButton(Colors.blue, 5),
            _createButton(Colors.indigo, 6),
            _createButton(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
