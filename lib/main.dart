import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  Expanded BuildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child:null,
      ),
    );
  }
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
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
              BuildKey(color: Colors.red,soundNumber: 1),
              BuildKey(color: Colors.deepOrange,soundNumber: 2),
              BuildKey(color: Colors.amber,soundNumber: 3),
              BuildKey(color: Colors.green[600],soundNumber: 4),
              BuildKey(color: Colors.blue[600],soundNumber: 5),
              BuildKey(color: Colors.indigo,soundNumber: 6),
              BuildKey(color: Colors.deepPurple[600],soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
