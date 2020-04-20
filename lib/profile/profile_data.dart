import 'package:flutter/material.dart';
import 'icon_profile.dart';

class ProfileData extends StatelessWidget {

  String pathImage;
  String nameProfile;
  String email;

  ProfileData(this.pathImage, this.nameProfile, this.email);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // VARIBLE DE LA IMAGEN
    final avatar = Container(
      margin: EdgeInsets.only(
        top: 120.0,
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
        top: 120.0,
        left: 20.0
      ),

      child: Text(
        nameProfile,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Colors.white
        ),
      ),
    );


    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );



    // << COLUMNA DE DETALLES DEL REVIEW >>
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, // esto es para alinear la columna
      children: <Widget>[
        userName,
        userInfo,
      ],
    );

    final avatar_info = Row(
      children: <Widget>[
        avatar,
        Row(
          children: <Widget>[
            userDetails
          ],
        )
      ],
    );


    // << CONTENEDOR TOTAL >>
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        avatar_info,
        IconProfile(),
      ],
    );

  }

}