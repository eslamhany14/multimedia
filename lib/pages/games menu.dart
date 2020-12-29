import 'package:flutter/material.dart';


class GameMenu extends StatefulWidget {
  @override
  _GameMenuState createState() => _GameMenuState();
}

class _GameMenuState extends State<GameMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game Menu"),
        ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, '/test');
            },color: Colors.red,child: Text("Game 1",style: TextStyle(fontSize: 30),),
              padding: EdgeInsets.all(30),),

            SizedBox(height: 20,),

            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            },color: Colors.red,child: Text("Game 2",style: TextStyle(fontSize: 30),),
      padding: EdgeInsets.all(30),),

            SizedBox(height: 20,),

            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            },color: Colors.red,child: Text("Main Menu",style: TextStyle(fontSize: 30),),
              padding: EdgeInsets.all(20),),
          ],
        ),
      ),
    );
  }
}
