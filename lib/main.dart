import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundClip) {
    final player = AudioCache();
    player.play('note$soundClip.wav');
  }

  Expanded buildKey({int soundNum, Color colName}) {
    return Expanded(
      child: FlatButton(
        color: colName,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNum: 1, colName: Colors.red),
              buildKey(soundNum: 2, colName: Colors.orange),
              buildKey(soundNum: 3, colName: Colors.yellow),
              buildKey(soundNum: 4, colName: Colors.green),
              buildKey(soundNum: 5, colName: Colors.lightGreen),
              buildKey(soundNum: 6, colName: Colors.blue),
              buildKey(soundNum: 7, colName: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
