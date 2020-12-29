import 'package:flutter/material.dart';
import 'package:multimediaproject/shared/alpha.dart';

class Alphapets extends StatefulWidget {
  @override
  _AlphapetsState createState() => _AlphapetsState();
}

class _AlphapetsState extends State<Alphapets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("learning arabic"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(25,0,0,0),
          children: <Widget>[
            SizedBox(height: 50,),
            Row(
              children: <Widget>[
                Alpha(char: "أ",sound: "alif.mp3",),
                Alpha(char: "ب",sound: "ba.mp3",),
                Alpha(char: "ت",sound: "taa.mp3",),
                Alpha(char: "ث",sound: "tha.mp3",),
              ]),
        Row(
          children: <Widget>[
                Alpha(char: "ج",sound: "jeem.mp3",),
                Alpha(char: "ح",sound: "haa.mp3",),
                Alpha(char: "خ",sound: "khaa.mp3",),
                Alpha(char: "د",sound: "dal.mp3",),
              ]),
            Row(
              children: <Widget>[
                Alpha(char: "ذ",sound: "dhal.mp3",),
                Alpha(char: "ر",sound: "raa.mp3",),
                Alpha(char: "ز",sound: "alif.mp3",),
                Alpha(char: "س",sound: "alif.mp3",),
                ]),
            Row(
              children: <Widget>[
                Alpha(char: "ش",sound: "alif.mp3",),
                Alpha(char: "ص",sound: "alif.mp3",),
                Alpha(char: "ض",sound: "alif.mp3",),
                Alpha(char: "ط",sound: "alif.mp3",),
              ]),
            Row(
                children: <Widget>[
                  Alpha(char: "ظ",sound: "alif.mp3",),
                  Alpha(char: "ع",sound: "alif.mp3",),
                  Alpha(char: "غ",sound: "alif.mp3",),
                  Alpha(char: "ف",sound: "alif.mp3",),
                ]),
            Row(
                children: <Widget>[
                  Alpha(char: "ق",sound: "alif.mp3",),
                  Alpha(char: "ك",sound: "alif.mp3",),
                  Alpha(char: "ل",sound: "alif.mp3",),
                  Alpha(char: "م",sound: "alif.mp3",),
                ]),
            Row(
                children: <Widget>[
                  Alpha(char: "ن",sound: "alif.mp3",),
                  Alpha(char: "ه",sound: "alif.mp3",),
                  Alpha(char: "و",sound: "alif.mp3",),
                  Alpha(char: "ي",sound: "alif.mp3",),
                ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Alpha(char: "١",sound: "alif.mp3",),
                Alpha(char: "٢",sound: "alif.mp3",),
                Alpha(char: "٣",sound: "alif.mp3",),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Alpha(char: "٤",sound: "alif.mp3",),
                Alpha(char: "٥",sound: "alif.mp3",),
                Alpha(char: "٦",sound: "alif.mp3",),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Alpha(char: "٧",sound: "alif.mp3",),
                Alpha(char: "٨",sound: "alif.mp3",),
                Alpha(char: "٩",sound: "alif.mp3",),
              ],
            ),

          ]
          )
      ),
    );
  }
}
