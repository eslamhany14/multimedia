import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Words extends StatefulWidget {
  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        children: <Widget>[
          block("أ", "اسد - اوزه"),
          block("ب", "بطه - بطاطا - بجعه "),
          block("ت", "تفاح - تابوت - تمساح"),
          block("ث", "ثعبان - ثلاجه "),
          block("ج", "جمل - جريده "),
          block("ح", "حيوان - حر - حمار"),
          block("خ", "خروف - خيار -خرشوف"),
          block("د", "درفيل - دب "),
          block("ذ", "ذبابه - ذيل "),
          block("ر", "ريشه - رمان - ربابه"),
          block("ز", "زيل "),
          block("س", "سمك - سمان - سمسم"),
          block("ش", "شباك - شرطه"),
          block("ص", "صندوق"),

        ],
      )
    );
  }
}

Widget space(){
  return  Container(color: Colors.black,height: 5,);
}

Widget block(String Letter,String Examples){
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.all(10)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(Letter,
              style: TextStyle(fontSize: 30),),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text("Example",
                  style: TextStyle(fontSize: 30),),
                Text(Examples,style: TextStyle(fontSize: 18),)
              ],
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5)),
      Container(color: Colors.black,height: 5,)
    ],
  );
}