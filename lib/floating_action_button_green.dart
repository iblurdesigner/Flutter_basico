import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool _favorite = false;

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a Favorito"),
        )
    );

    // PAAR CAMBIAR EL ESTADO DEL ICONO
    setState(() {
      _favorite = !_favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        _favorite ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}