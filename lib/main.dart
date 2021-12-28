import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded Keys({color, soundnumber}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playsound(soundnumber);
        },
        color: color,
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
            children: <Widget>[
              Keys(color: Colors.red, soundnumber: 1),
              Keys(color: Colors.orange, soundnumber: 2),
              Keys(color: Colors.yellow, soundnumber: 3),
              Keys(color: Colors.green, soundnumber: 4),
              Keys(color: Colors.blue, soundnumber: 5),
              Keys(color: Colors.indigo, soundnumber: 6),
              Keys(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
