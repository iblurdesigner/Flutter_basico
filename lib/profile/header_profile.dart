import 'package:flutter/material.dart';
import 'package:platzitripsapp/gradient_back.dart';
import 'package:platzitripsapp/profile/profile_data.dart';


class HeaderProfile extends StatelessWidget{
  String pathImage = 'assets/img/turista.jpg';
  String nameProfile = "Varuna Yasas";
  String email = "varunayasas@gmail.com";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Profile", 400.0),
        ProfileData(pathImage, nameProfile, email)
      ],
    );
  }

}