import 'package:flutter/material.dart';
import 'package:platzitripsapp/floating_action_button_green.dart';

class CardProfile extends StatelessWidget{

  String pathPhoto;
  String placeName;
  String description;
  double steps;

  CardProfile(this.pathPhoto, this.placeName, this.description, this.steps);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),

      width: double.infinity,
      height: 250.0,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow (
            color: Colors.black12,
            blurRadius: 25.0,
              offset: Offset(0.0, 7.0)
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathPhoto)
        ),
      ),
    );


    final textPlace = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0
      ),

      child: Text(
        placeName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final textDescription = Container(
      margin: EdgeInsets.only(
        left: 10.0
      ),

      child: Text(
        description,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12.0,
          color: Color(0xFFC4C5C6)
        ),
      ),
    );

    final textSteps = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 10.0
      ),

      child: Text(
        "Steps $steps",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange
        ),
      ),
    );


    final rectangle = Container(
      margin: EdgeInsets.only(
        top: 200.0,
      ),

      width: 250.0,
      height: 130.0,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: <BoxShadow>[
          BoxShadow (
              color: Colors.black26,
              blurRadius: 25.0,
              offset: Offset(0.0, 7.0)
          )
        ],
      ),

      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textPlace,
                textDescription,
                textSteps
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButtonGreen()
            ],
          )
        ],
      ),
    );


    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        photo,
        rectangle
      ],
    );
  }

}