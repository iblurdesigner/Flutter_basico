import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  String descriptionPlace;
  int stars;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // << VARIABLE DE LAS ESTRELLAS >>
    final star = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );


    final star_half = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );


    final star_border = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );


    // << FILA QUE CONTIENE EL TITULO Y LAS ESTRELLAS // son dos rows >>
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: <Widget>[
            star,star,star,star_half,star_border,
          ],
        )
      ],
    );

    // << VARIABLE DEL PARRAFO DE LA DESCRIPCION >>
    final description = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 15.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            descriptionPlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.0,
              color: Color(0xFF56575a)
            ),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );


    // << CONTAINER DEL TITULO Y LAS ESTRELLAS >>
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }

}