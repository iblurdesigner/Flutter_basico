import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/quino-al-mBQIfKlvowM-unsplash.jpg"),
          CardImage("assets/img/khachik-simonian-nXOB-wh4Oyc-unsplash.jpg"),
          CardImage("assets/img/glen-jackson-V53QmbO25Fs-unsplash.jpg"),
          CardImage("assets/img/derek-thomson-TWoL-QCZubY-unsplash.jpg"),
          CardImage("assets/img/denys-nevozhai-guNIjIuUcgY-unsplash.jpg"),
          CardImage("assets/img/annie-spratt-3bh3elC0D7M-unsplash.jpg")
        ],
      ),
    );
  }

}