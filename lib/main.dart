import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded _createExpandedButton(MaterialColor color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          _playSound(soundNumber);
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
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
          children: [
            _createExpandedButton(Colors.red, 1),
            _createExpandedButton(Colors.orange, 2),
            _createExpandedButton(Colors.yellow, 3),
            _createExpandedButton(Colors.green, 4),
            _createExpandedButton(Colors.blue, 5),
            _createExpandedButton(Colors.indigo, 6),
            _createExpandedButton(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
