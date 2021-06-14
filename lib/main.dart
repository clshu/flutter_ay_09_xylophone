import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List<MaterialColor> rainbow = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
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

  List<Widget> _createButtonList (List<MaterialColor> rainbow) {
    List<Expanded> list = [];
    for (var i = 0; i < 7; i++) {
      list.add(_createExpandedButton(rainbow[i], i + 1));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _createButtonList(rainbow),
          ),
        ),
      ),
    );
  }
}
