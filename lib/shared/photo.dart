import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';


class Photo extends StatelessWidget{
  final String photoPath;
  final String sound;
  final String name;
  var player = AudioCache();

  Photo({@required this.photoPath,@required this.sound, this.name});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          color: Colors.white,
          onPressed:() {
            player.play(sound);
          },
          padding: EdgeInsets.all(0),
          child: Container(
            width: 150,
            height: 100,
            child: Image(image: AssetImage(photoPath)),
          ),
        ),
           Container(
            child: Text(name,style: TextStyle(fontSize: 20),),),


      ],
    );
  }

}