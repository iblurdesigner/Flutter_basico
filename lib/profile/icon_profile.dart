import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconProfile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IconProfile();
  }

}

class _IconProfile extends State<IconProfile>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void onPressIcon() {
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Me presionaste"),
          )
      );
    }


    final listIcons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          child: Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60
            ),
            child: IconButton(
              icon: Icon(
                  Icons.bookmark_border,
                  size: 17.0,
                  color: Color(0xFF4f57d2)
              ),
              onPressed: (){
                Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Bookmark presionado"),
                    )
                );
              },
            ),
          ),
        ),

        InkWell(
          child: Container(
            width: 31.0,
            height: 31.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60
            ),
            child: Icon(
                Icons.calendar_today,
                size: 17.0,
                color: Color(0xFF4f57d2)
            ),
          ),
        ),

        InkWell(
          child: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60
            ),
            child: Icon(
                Icons.add,
                size: 45.0,
                color: Color(0xFF4f57d2)
            ),
          ),
        ),

        InkWell(
          child: Container(
            width: 31.0,
            height: 31.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60
            ),
            child: Icon(
                Icons.email,
                size: 17.0,
                color: Color(0xFF4f57d2)
            ),
          ),
        ),

        InkWell(
          child: Container(
            width: 31.0,
            height: 31.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60
            ),
            child: Icon(
                Icons.person,
                size: 17.0,
                color: Color(0xFF4f57d2)
            ),
          ),
        )
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        children: <Widget>[
          listIcons
        ],
      ),
    );
  }

}