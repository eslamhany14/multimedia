import 'package:flutter/material.dart';
import 'package:multimediaproject/shared/photo.dart';
class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Photos")),
      body: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.all(10)),
        Row(
          children: <Widget>[
            Expanded(child: Photo(photoPath: "assets/lion.jpg", sound: "alif.mp3",name: "اسد",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/lion.jpg", sound: "alif.mp3",name: "بطه",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "تفاحه",)),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(child: Photo(photoPath: "assets/lion.jpg", sound: "alif.mp3",name: "ثعبان",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "جمل",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "حمامه",)),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "خروف",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "دب",)),
            SizedBox(width: 10,),
            Expanded(child: Photo(photoPath: "assets/duck.jpg", sound: "alif.mp3",name: "ذبابه",)),
          ],
        ),
      ],
      ),
    );
  }
}
