import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  var player = AudioCache();
  Map<String , bool> score ={};
  Map<String , String> choices ={
    '🍎' : 'تفاحه',
    '🥒' : 'خيار',
    '🍋' : 'ليمون',
    '🍊' : 'برتقال',
    '🥥' : 'جوزهند',
  };
  int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match Game"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((element){
              return Expanded(
                child: Draggable<String>(
                  data: element,
                  child: Move(score[element] == true ? '✔': element),
                  feedback: Move(element),
                  childWhenDragging: Move('🐇'),
                ),
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: choices.keys.map((element){
              // call function buildTarget
              return buildTarget(element);
            }).toList()..shuffle(Random(index)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed:() {
          setState(() {
            score.clear();
            index++;
          });
        },
      ),
    );
  }

  Widget buildTarget(element){
    return DragTarget<String>(
      builder: (context,incoming,rejected){
        if(score[element] == true) {
          return Container(
            color: Colors.white,
            child: Text('congratulations'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        }
        else{
          return Container(
            color: Colors.indigoAccent,
            padding: EdgeInsets.all(10),
            child: Text(choices[element],style: TextStyle(fontSize: 30,),),

          );
        }
      },
      onWillAccept: (data) => data == element ,
      onAccept: (data) {
        setState(() {
          score[element] = true ;
          player.play('1.mp3');
        });
      },
      onLeave:(data) {} ,
    );
  }
}




class Move extends StatelessWidget {
  String emoji;
  Move(this.emoji);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(15),
        child: Text(emoji,style: TextStyle(color: Colors.black,fontSize: 50),),
      ),
    );
  }
}
