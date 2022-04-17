import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Expanded keys({color, soundnumber}) {
    return Expanded(
        child: MaterialButton(
            onPressed: () => _playsound(note: soundnumber), color: color));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keys(color: Colors.red, soundnumber: 1),
              keys(color: Colors.orange, soundnumber: 2),
              keys(color: Colors.yellow, soundnumber: 3),
              keys(color: Colors.green, soundnumber: 4),
              keys(color: Colors.blue, soundnumber: 5),
              keys(color: Colors.indigo, soundnumber: 6),
              keys(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  _playsound({required int note}) {
    final player = AudioCache();
    player.play("note$note.wav");
  }
}
