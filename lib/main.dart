import 'package:flutter/material.dart';
import 'package:audioplayers_with_rate/audioplayers.dart';
import 'package:audioplayers_with_rate/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    AudioPlayer audioPlugin = new AudioPlayer();
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildkey( {Color color,int soundNumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,//to set the button row by row
            children: <Widget> [
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellow, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.blue, soundNumber: 5),
              buildkey(color: Colors.indigo, soundNumber: 6),
              buildkey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        )
      ),
    );
  }
}
