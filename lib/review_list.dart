import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/turista.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/jess.jpg", "Jessica Marlin", "5 review 28 photos", "All you need is Ecuador"),
        Review("assets/img/teo.jpeg", "Teo Gonzalez", "3 review 9 photos", "Es un lugar increible, lo recomiendo"),
      ],
    );
  }

}