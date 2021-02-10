import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber)
  {
    final player=AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(int number,MaterialColor colour)
  {
    return Expanded(
      child: FlatButton(onPressed: ()
      {
        playSound(number);
      }
        , child: null
        ,color: colour,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget> [
                buildKey(1,Colors.red),
                buildKey(2,Colors.orange),
                buildKey(3,Colors.yellow),
                buildKey(4,Colors.green),
                buildKey(5,Colors.teal),
                buildKey(6,Colors.blue),
                buildKey(7,Colors.purple)
              ],
            ),
          ),
        )
    );
  }
}
