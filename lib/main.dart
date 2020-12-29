import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multimediaproject/pages/Alphapets.dart';
import 'package:multimediaproject/pages/Photos.dart';
import 'package:multimediaproject/pages/Test.dart';
import 'package:multimediaproject/pages/Words.dart';
import 'package:flutter/animation.dart';
import 'package:multimediaproject/pages/games%20menu.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/alpha':(BuildContext context) => Alphapets(),
        '/photos':(BuildContext context) => Photos(),
        '/words':(BuildContext context) => Words(),
        '/test':(BuildContext context) => Test(),
        '/menu':(BuildContext context) => GameMenu(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 180).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("learning arabic"),
      ),
      body: ListView(
            children: <Widget>[
              SizedBox(height: 80,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/alpha');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20,60,0,0),
                      width: animation.value,
                      height: animation.value,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
                      child: Text("Alphapets\n Numbers",style: TextStyle(fontSize: 30),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/words');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(35,80,0,0),
                      width: animation.value,
                      height: animation.value,
                      decoration: BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.circular(10)),
                      child: Text("Words",style: TextStyle(fontSize: 40),),
                    ),
                  ),
                ],
              ),
            // second row
              SizedBox(height: 40,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/photos');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25,80,0,0),
                      width: animation.value,
                      height: animation.value,
                      decoration: BoxDecoration(color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Photos",style: TextStyle(fontSize: 40),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/menu');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25,70,0,0),
                      width: animation.value,
                      height: animation.value,
                      decoration: BoxDecoration(color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Games",style: TextStyle(fontSize: 40),),
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
