import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class Alpha extends StatelessWidget{
     final String char;
    final String sound;
    var player = AudioCache();

     Alpha({@required this.char,@required this.sound});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.indigoAccent,
      onPressed:() {
        player.play(sound);
      },
      child: Container(
        child: Text(char,style: TextStyle(fontSize: 20),),
      ),
    );
  }

}