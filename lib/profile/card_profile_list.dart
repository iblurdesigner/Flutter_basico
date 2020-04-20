import 'package:flutter/material.dart';
import 'card_profile.dart';

class CardProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.only(
        top: 250.0
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CardProfile("assets/img/khachik-simonian-nXOB-wh4Oyc-unsplash.jpg", "Knucles Mountains Range", "Mountain at Andes of America\nMountain at Andes of America", 1231223),
          CardProfile("assets/img/glen-jackson-V53QmbO25Fs-unsplash.jpg", "Salinas Beach", "Beach of Ecuador\nBeach of Ecuador the best places", 234545),
          CardProfile("assets/img/derek-thomson-TWoL-QCZubY-unsplash.jpg", "Knucles Mountains Range", "Mountain at Andes of America\nMountain at Andes of America", 45677),
          CardProfile("assets/img/denys-nevozhai-guNIjIuUcgY-unsplash.jpg", "Knucles Mountains Range", "Mountain at Andes of America\nMountain at Andes of America", 346567),
        ],
      ),
    );

  }

}