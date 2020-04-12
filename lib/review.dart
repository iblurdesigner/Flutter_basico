import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = 'assets/img/turista.jpg';
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // VARIBLE DE LA IMAGEN
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      // aqui ponemos la imagen
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );



    // VARIABLES DEL USER DETAIL
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );


    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );


    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );



    // << COLUMNA DE DETALLES DEL REVIEW >>
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, // esto es para alinear la columna
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );



    // << CONTENEDOR TOTAL >>
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );

  }

}