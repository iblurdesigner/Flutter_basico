import 'package:flutter/material.dart';

class IconProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IconProfile();
  }

}

class _IconProfile extends State<IconProfile>{

  void onPressIcon() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Me presionaste"),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: onPressIcon,
      child: Icon(
        Icons.add
      ),
    );
  }

}